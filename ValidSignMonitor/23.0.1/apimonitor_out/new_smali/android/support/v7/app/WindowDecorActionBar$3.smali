.class  Landroid/support/v7/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;
.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/app/WindowDecorActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationUpdate(Landroid/view/View;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/app/WindowDecorActionBar$3;->this$0:Landroid/support/v7/app/WindowDecorActionBar;
#getter for: Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;
invoke-static {v1}, Landroid/support/v7/app/WindowDecorActionBar;->access$200(Landroid/support/v7/app/WindowDecorActionBar;)Landroid/support/v7/widget/ActionBarContainer;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
return-void
.end method