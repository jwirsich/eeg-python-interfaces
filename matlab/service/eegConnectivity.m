function sFiles = eegConnectivity(sFiles)

    % Script generated by Brainstorm (15-Jan-2019)

    % Start a new report
    bst_report('Start', sFiles);

    % Process: Coherence NxN
    sFiles = bst_process('CallProcess', 'process_cohere1n', sFiles, [], ...
        'timewindow',   [], ...
        'removeevoked', 0, ...
        'cohmeasure',   2, ...  % Magnitude-squared
        'maxfreqres',   2, ...
        'maxfreq',      60, ...
        'outputmode',   1);  % Save individual results (one file per input file)

    % Save and display report
    ReportFile = bst_report('Save', sFiles);
    bst_report('Open', ReportFile);
    % bst_report('Export', ReportFile, ExportDir);\

end