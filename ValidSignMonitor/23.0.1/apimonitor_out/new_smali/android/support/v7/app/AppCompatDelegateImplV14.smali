.class  Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"
.field private mHandleNativeActionModes:Z
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return-void
.end method
.method public isHandleNativeActionModesEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return v0
.end method
.method public setHandleNativeActionModesEnabled(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return-void
.end method
.method  wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
return-object v0
.end method