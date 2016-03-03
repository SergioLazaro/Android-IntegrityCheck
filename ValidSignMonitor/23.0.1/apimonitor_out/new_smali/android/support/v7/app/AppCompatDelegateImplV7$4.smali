.class  Landroid/support/v7/app/AppCompatDelegateImplV7$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"
.implements Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAttachedFromWindow()V
.registers 1
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$4;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->dismissPopups()V
invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$400(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
return-void
.end method