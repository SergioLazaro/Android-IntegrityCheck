.class  Landroid/support/v7/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
.registers 8
invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I
move-result v1
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;
#calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->updateStatusGuard(I)I
invoke-static {v2, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$300(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
move-result v0
if-eq v1, v0, :cond_1c
invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I
move-result v2
invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I
move-result v3
invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I
move-result v4
invoke-virtual {p2, v2, v0, v3, v4}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;
move-result-object p2
:cond_1c
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
move-result-object v2
return-object v2
.end method