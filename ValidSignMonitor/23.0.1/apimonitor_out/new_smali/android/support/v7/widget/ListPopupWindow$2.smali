.class  Landroid/support/v7/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
if-eqz v1, :cond_13
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$2;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V
:cond_13
return-void
.end method