.class  Landroid/support/v7/app/AppCompatDelegateImplV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
return-void
.end method
.method  wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
return-object v0
.end method