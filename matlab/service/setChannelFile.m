function setChannelFile(sFiles, RawFiles)

    % Script generated by Brainstorm (15-Jan-2019)

    % Start a new report
    bst_report('Start', sFiles);

    % Process: Set channel file
    sFiles = bst_process('CallProcess', 'process_import_channel', sFiles, [], ...
        'channelfile',  {RawFiles{1}, 'ASCII_NXYZ'}, ...
        'usedefault',   1, ...  % 
        'channelalign', 0, ...
        'fixunits',     1, ...
        'vox2ras',      1);

    % Save and display report
    ReportFile = bst_report('Save', sFiles);
    bst_report('Open', ReportFile);
    % bst_report('Export', ReportFile, ExportDir);

end
