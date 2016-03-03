.class  Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.source "PopupWindowCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V
return-void
.end method
.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->getWindowLayoutType(Landroid/widget/PopupWindow;)I
move-result v0
return v0
.end method
.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V
return-void
.end method