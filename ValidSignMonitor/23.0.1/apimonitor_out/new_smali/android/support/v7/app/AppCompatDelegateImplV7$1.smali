.class  Landroid/support/v7/app/AppCompatDelegateImplV7$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#getter for: Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
move-result v0
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V
invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$100(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
:cond_10
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#getter for: Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
move-result v0
and-int/lit16 v0, v0, 0x1000
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
const/16 v1, 0x6c
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V
invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$100(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
:cond_21
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#setter for: Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z
invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$202(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#setter for: Landroid/support/v7/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$002(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
return-void
.end method