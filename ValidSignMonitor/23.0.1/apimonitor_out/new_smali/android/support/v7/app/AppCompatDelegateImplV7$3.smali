.class  Landroid/support/v7/app/AppCompatDelegateImplV7$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"
.implements Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
iget v1, p1, Landroid/graphics/Rect;->top:I
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I
invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$300(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->top:I
return-void
.end method