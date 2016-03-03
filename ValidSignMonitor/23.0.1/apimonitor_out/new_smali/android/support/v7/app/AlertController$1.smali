.class  Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/app/AlertController;
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$000(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
move-result-object v1
if-ne p1, v1, :cond_34
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
if-eqz v1, :cond_34
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$100(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
move-result-object v0
:goto_1a
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:cond_1f
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$700(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
move-result-object v1
const/4 v2, 0x1
iget-object v3, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;
invoke-static {v3}, Landroid/support/v7/app/AlertController;->access$600(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
return-void
:cond_34
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$200(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
move-result-object v1
if-ne p1, v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
if-eqz v1, :cond_4f
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$300(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
move-result-object v0
goto :goto_1a
:cond_4f
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$400(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
move-result-object v1
if-ne p1, v1, :cond_6a
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
if-eqz v1, :cond_6a
iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;
#getter for: Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
invoke-static {v1}, Landroid/support/v7/app/AlertController;->access$500(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
move-result-object v1
invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;
move-result-object v0
goto :goto_1a
:cond_6a
const/4 v0, 0x0
goto :goto_1a
.end method