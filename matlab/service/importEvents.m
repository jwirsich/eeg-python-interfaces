function sFiles=importEvents(sFiles, SubjectNames, event_name, epoch_time)

% Script generated by Brainstorm (15-Jan-2019)

% Start a new report
bst_report('Start', sFiles);

% Process: Import MEG/EEG: Events
sFiles = bst_process('CallProcess', 'process_import_data_event', sFiles, [], ...
    'subjectname', SubjectNames{1}, ...
    'condition',   'sess1', ...
    'eventname',   event_name, ...
    'timewindow',  [0, 796.5798], ...
    'epochtime',   [0, epoch_time], ...
    'createcond',  1, ...
    'ignoreshort', 1, ...
    'usectfcomp',  1, ...
    'usessp',      1, ...
    'freq',        [], ...
    'baseline',    []);

% Save and display report
ReportFile = bst_report('Save', sFiles);
bst_report('Open', ReportFile);
% bst_report('Export', ReportFile, ExportDir);

