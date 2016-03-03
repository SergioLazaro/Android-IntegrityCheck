.class final Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
return-void
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
invoke-static {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$1100(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/menu/MenuBuilder;)V
return-void
.end method
.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
.registers 4
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_d
const/16 v1, 0x6c
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
:cond_d
const/4 v1, 0x1
return v1
.end method