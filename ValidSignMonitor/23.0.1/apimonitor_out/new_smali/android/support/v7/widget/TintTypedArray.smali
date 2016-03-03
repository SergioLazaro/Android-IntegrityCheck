.class public Landroid/support/v7/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"
.field private final mContext:Landroid/content/Context;
.field private mTintManager:Landroid/support/v7/widget/TintManager;
.field private final mWrapped:Landroid/content/res/TypedArray;
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
return-void
.end method
.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
.registers 5
invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
new-instance v1, Landroid/support/v7/widget/TintTypedArray;
invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
return-object v1
.end method
.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
.registers 7
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
new-instance v1, Landroid/support/v7/widget/TintTypedArray;
invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
return-object v1
.end method
.method public getBoolean(IZ)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
return v0
.end method
.method public getChangingConfigurations()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I
move-result v0
return v0
.end method
.method public getColor(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v0
return v0
.end method
.method public getColorStateList(I)Landroid/content/res/ColorStateList;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method public getDimension(IF)F
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v0
return v0
.end method
.method public getDimensionPixelOffset(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v0
return v0
.end method
.method public getDimensionPixelSize(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v0
return v0
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_19
return-object v1
:cond_1a
iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
goto :goto_19
.end method
.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/TintManager;->getDrawable(IZ)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_1a
return-object v1
:cond_1b
const/4 v1, 0x0
goto :goto_1a
.end method
.method public getFloat(IF)F
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v0
return v0
.end method
.method public getFraction(IIIF)F
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F
move-result v0
return v0
.end method
.method public getIndex(I)I
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I
move-result v0
return v0
.end method
.method public getIndexCount()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I
move-result v0
return v0
.end method
.method public getInt(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v0
return v0
.end method
.method public getInteger(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v0
return v0
.end method
.method public getLayoutDimension(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v0
return v0
.end method
.method public getLayoutDimension(ILjava/lang/String;)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I
move-result v0
return v0
.end method
.method public getNonResourceString(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPositionDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getResourceId(II)I
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v0
return v0
.end method
.method public getResources()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;
move-result-object v0
return-object v0
.end method
.method public getString(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getText(I)Ljava/lang/CharSequence;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTextArray(I)[Ljava/lang/CharSequence;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTintManager()Landroid/support/v7/widget/TintManager;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;
if-nez v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mTintManager:Landroid/support/v7/widget/TintManager;
return-object v0
.end method
.method public getType(I)I
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I
move-result v0
return v0
.end method
.method public getValue(ILandroid/util/TypedValue;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
move-result v0
return v0
.end method
.method public hasValue(I)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
return v0
.end method
.method public length()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I
move-result v0
return v0
.end method
.method public peekValue(I)Landroid/util/TypedValue;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
move-result-object v0
return-object v0
.end method
.method public recycle()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method