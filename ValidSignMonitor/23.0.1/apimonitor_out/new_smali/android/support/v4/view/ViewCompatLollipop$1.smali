.class final Landroid/support/v4/view/ViewCompatLollipop$1;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"
.implements Landroid/view/View$OnApplyWindowInsetsListener;
.field final synthetic val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;
.method constructor <init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.registers 5
new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;
invoke-direct {v0, p2}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V
iget-object v1, p0, Landroid/support/v4/view/ViewCompatLollipop$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;
invoke-interface {v1, p1, v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
move-result-object v0
check-cast v0, Landroid/support/v4/view/WindowInsetsCompatApi21;
invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;
move-result-object v1
return-object v1
.end method