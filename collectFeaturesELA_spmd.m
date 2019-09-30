function collectFeaturesELA(func,dim,ssize)

% -------------------------------------------------------------------------
% Preliminaries 
localSetup;                                                 % Run script with local setup
FILENAME = ['_D' num2str(dim) '_C' num2str(ssize) '.mat'];  % Parameters of the experiment
% -------------------------------------------------------------------------
% Test if we have the necessary data to calculate these features
if ~filexists([ROOTDIR 'X' FILENAME]) || ~filexists([ROOTDIR 'XX' FILENAME]) || ...
        ~filexists([ROOTDIR 'X2' FILENAME]) || ~filexists([ROOTDIR 'Hx' FILENAME])
   warning('Please collect latin hypercube and auxiliary data. Skipped.');
   return
end
% Loading the required data
X  = getfromfile([ROOTDIR 'X'  FILENAME],'X');
XX = getfromfile([ROOTDIR 'XX' FILENAME],'XX');
X2 = getfromfile([ROOTDIR 'X2' FILENAME],'X2');
Hxhat  = getfromfile([ROOTDIR 'Hx' FILENAME],'Hxhat');
Hx1hat = getfromfile([ROOTDIR 'Hx' FILENAME],'Hx1hat');
Hx2hat = getfromfile([ROOTDIR 'Hx' FILENAME],'Hx2hat');
% Variables for the experiment
ELA_FEATURES = 17;
DELTA = norm(10.*ones(dim,1));
% -------------------------------------------------------------------------
% Starting the function/instance run

ROOTDIR_LOCAL = ROOTDIR;
N = length(func);

%for i=func % This allows for multiple functions with the same dimension and sample size
spmd

    for ind = 1:numlabs:N
        
        i = ind + labindex - 1;
        disp(i);

        % ---------------------------------------------------------------------
        % Test if we still need to calculate these features
        if testVariableInFile([ROOTDIR_LOCAL 'ELA_F' num2str(i) FILENAME],'ELA')
            warning(['ELA_F' num2str(i) FILENAME ' already processed.'])
        else

            if ~exist([ROOTDIR_LOCAL 'Y_F' num2str(i) FILENAME], 'file')
                warning(['Please collect F' num2str(i) ' data. Skipped.']);
            else

                Y           = getfield(load([ROOTDIR_LOCAL 'Y_F' num2str(i) FILENAME]),'Y');
                MAXINSTANCE = size(Y,1);
                ELA         = zeros(MAXINSTANCE,ELA_FEATURES);
                % ---------------------------------------------------------------------
                % Instance run
                for j=1:MAXINSTANCE
                    % Calculating the ELA features
                    ELA(j,:) = calcELA(X,XX,X2,Y(j,:),Hxhat,Hx1hat,Hx2hat,DELTA);
                end
                % ---------------------------------------------------------------------
                % Saving the data
                if exist([ROOTDIR_LOCAL 'ELA_F' num2str(i) FILENAME], 'file')
                    savetofile([ROOTDIR_LOCAL 'ELA_F' num2str(i) FILENAME], ELA, true);
                else
                    savetofile([ROOTDIR_LOCAL 'ELA_F' num2str(i) FILENAME], ELA, false);
                end

            end 
        end
    end
end
% =========================================================================
