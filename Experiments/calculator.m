function m2m(arg)
in=0;
flag=0;
str1=[];
g=0;
h=[];
flag1=0;

figure_1 = figure('MenuBar','none','Name','Demo Calculator','NumberTitle','off','Position',[100,100,900,600],'Color',[.95 .95 .95]);
control_buttons = uipanel('BorderType','etchedin','ForegroundColor','Black','BackgroundColor',[.8 .8 .8],'Units'...
                            ,'characters','Title','','Position',[1 1 200 53],'HighlightColor',[.8 .8 .8]);
start_button1 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','1','Position',[30 300 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s1);
start_button2 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','2','Position',[130 300 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s2);
start_button3 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','3','Position',[230 300 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s3);
start_button4 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','4','Position',[30 250 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s4);
start_button5 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','5','Position',[130 250 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s5);
start_button6 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','6','Position',[230 250 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s6);
start_button7 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','7','Position',[30 200 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s7);
start_button8 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','8','Position',[130 200 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s8);
start_button9 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','9','Position',[230 200 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s9);
start_button0 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','0','Position',[130 150 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@s0);
start_button10 =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','/','Position',[30 150 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@sdiv);
start_buttoneuuals =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','=','Position',[230 150 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@sequal);
start_buttonplus =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','+','Position',[30 100 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@splus);  
start_buttonmin =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','-','Position',[130 100 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@sminus);
start_buttonmul =uicontrol('Parent',control_buttons,'Style','Pushbutton','String','X','Position',[230 100 80 30],'BackgroundColor',[.92 .92 .92],...
                                 'FontSize',12,'HorizontalAlignment','Center','CallBack',@smul);
enter_number_text = uicontrol('Parent',control_buttons,'Style','Text','String','','Position',[30 400 150 30],'HorizontalAlignment','Left',...
                               'BackgroundColor',[.92 .92 .92],'ForegroundColor',[0 0 0],'FontSize',10);
enter_number_text1 = uicontrol('Parent',control_buttons,'Style','Text','String','','Position',[230 400 80 30],'HorizontalAlignment','Left',...
                               'BackgroundColor',[.92 .92 .92],'ForegroundColor',[0 0 0],'FontSize',10);
while(1)
    if(flag==1)
        str=num2str(in);
        str1=strcat(str1,str);
        set(enter_number_text,'string',str1);
        flag=0;
    end
    if(flag1==1)
        g=str2num(str1);
        set(enter_number_text1,'string',num2str(g));
    end
    pause(0.1)
end
    function s1(varargin)
        flag = 1;
        in=1;
    end
    function s2(varargin)
        flag = 1;
        in=2;
    end
    function s3(varargin)
        flag = 1;
        in=3;
    end
    function s4(varargin)
        flag = 1;
        in=4;
    end
    function s5(varargin)
        flag = 1;
        in=5;
    end
    function s6(varargin)
        flag = 1;
        in=6;
    end
    function s7(varargin)
        flag = 1;
        in=7;
    end
    function s8(varargin)
        flag = 1;
        in=8;
    end
    function s9(varargin)
        flag = 1;
        in=9;
    end
    function s0(varargin)
        flag = 1;
        in=0;
    end
    function sdiv(varargin)
        flag = 1;
        in='\';
    end
    function smul(varargin)
        flag = 1;
        in='X';
    end
    function sminus(varargin)
        flag = 1;
        in='-';
    end
    function splus(varargin)
        flag = 1;
        in='+';
    end
    function sequal(varargin)
        flag1=1;
    end                        
end                          
                                            