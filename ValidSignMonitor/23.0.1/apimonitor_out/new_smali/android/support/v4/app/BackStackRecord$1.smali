.class  Landroid/support/v4/app/BackStackRecord$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"
.implements Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;
.field final synthetic this$0:Landroid/support/v4/app/BackStackRecord;
.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$1;->this$0:Landroid/support/v4/app/BackStackRecord;
iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$1;->val$inFragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$1;->val$inFragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v0
return-object v0
.end method