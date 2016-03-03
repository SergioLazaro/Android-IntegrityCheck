.class  Landroid/support/v7/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$3;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
const/4 v1, -0x1
if-eq p3, v1, :cond_f
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$3;->this$0:Landroid/support/v7/widget/ListPopupWindow;
#getter for: Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;
move-result-object v0
if-eqz v0, :cond_f
const/4 v1, 0x0
#setter for: Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
invoke-static {v0, v1}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/widget/ListPopupWindow$DropDownListView;Z)Z
:cond_f
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 2
return-void
.end method