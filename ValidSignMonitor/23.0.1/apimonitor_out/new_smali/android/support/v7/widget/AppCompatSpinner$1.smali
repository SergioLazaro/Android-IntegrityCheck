.class  Landroid/support/v7/widget/AppCompatSpinner$1;
.super Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.source "AppCompatSpinner.java"
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatSpinner;
.field final synthetic val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iput-object p3, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-direct {p0, p2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V
return-void
.end method
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->val$popup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
return-object v0
.end method
.method public onForwardingStarted()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
#getter for: Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$1;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
#getter for: Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V
:cond_15
const/4 v0, 0x1
return v0
.end method