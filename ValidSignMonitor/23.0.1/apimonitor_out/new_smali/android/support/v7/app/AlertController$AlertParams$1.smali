.class  Landroid/support/v7/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"
.field final synthetic this$0:Landroid/support/v7/app/AlertController$AlertParams;
.field final synthetic val$listView:Landroid/widget/ListView;
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
.registers 7
iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;
iput-object p6, p0, Landroid/support/v7/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;
invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;
iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z
if-eqz v2, :cond_18
iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$1;->this$0:Landroid/support/v7/app/AlertController$AlertParams;
iget-object v2, v2, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z
aget-boolean v0, v2, p1
if-eqz v0, :cond_18
iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;
const/4 v3, 0x1
invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V
:cond_18
return-object v1
.end method