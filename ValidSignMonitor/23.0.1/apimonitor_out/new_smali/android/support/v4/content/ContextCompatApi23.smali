.class  Landroid/support/v4/content/ContextCompatApi23;
.super Ljava/lang/Object;
.source "ContextCompatApi23.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getColor(Landroid/content/Context;I)I
.registers 3
invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I
move-result v0
return v0
.end method
.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 3
invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method