message=inputdlg( {'What is the string to be speedread? '}, '1st Question', 4); %window for the string
message=strjoin(message);
messagestring={ 'Select Your Speed: '}; %window to select the message speed
mchoices={'fast','medium','slow','custom'};
numberForSpeed = menu( messagestring, mchoices );
switch(numberForSpeed)
    case 1 %if user chose fast
        wordsPerMinute=2000;
    case 2 %if user chose medium
        wordsPerMinute=500;
    case 3 %if user chose slow
        wordsPerMinute=300;
    case 4 %if the user wants to input a custom speed
        wordsPerMinute=inputdlg('Whats your words per minute?','WPM',2);
        wordsPerMinute=str2double(strjoin(wordsPerMinute));
end
strtrim(message); %takes out white spaces before and after string
splitted=strsplit(message); %breaks message into string array with ' ' as a delimiter
for i=1:length(splitted) %runs for the amountof words
    pause(1/(wordsPerMinute/60)); %finds the words to be shown per second
    msgbox(splitted(i)); %shows a message box of each word
end