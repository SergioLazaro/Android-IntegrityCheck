.class final Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V
return-void
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
#getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
#getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
:cond_12
return-void
.end method
.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
.registers 4
if-nez p1, :cond_14
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
#getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
#getter for: Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
:cond_14
const/4 v0, 0x1
return v0
.end method