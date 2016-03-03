.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"
.implements Landroid/support/v4/view/TintableBackgroundView;
.field private static final ATTRS_ANDROID_SPINNERMODE:[I = null
.field private static final IS_AT_LEAST_JB:Z = false
.field private static final IS_AT_LEAST_M:Z = false
.field private static final MAX_ITEMS_MEASURED:I = 0xf
.field private static final MODE_DIALOG:I = 0x0
.field private static final MODE_DROPDOWN:I = 0x1
.field private static final MODE_THEME:I = -0x1
.field private static final TAG:Ljava/lang/String; = "AppCompatSpinner"
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
.field private mDropDownWidth:I
.field private mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.field private mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.field private mPopupContext:Landroid/content/Context;
.field private mPopupSet:Z
.field private mTempAdapter:Landroid/widget/SpinnerAdapter;
.field private final mTempRect:Landroid/graphics/Rect;
.field private mTintManager:Landroid/support/v7/widget/TintManager;
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x17
if-lt v0, v3, :cond_1e
move v0, v1
:goto_9
sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x10
if-lt v0, v3, :cond_20
move v0, v1
:goto_12
sput-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
new-array v0, v1, [I
const v1, 0x10102f1
aput v1, v0, v2
sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I
return-void
:cond_1e
move v0, v2
goto :goto_9
:cond_20
move v0, v2
goto :goto_12
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 5
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I
invoke-direct {p0, p1, v0, v1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->spinnerStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, -0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.registers 15
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v6, Landroid/graphics/Rect;
invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
sget-object v6, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I
const/4 v7, 0x0
invoke-static {p1, p2, v6, p3, v7}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;
move-result-object v6
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/widget/TintManager;
new-instance v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-direct {v6, p0, v7}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz p5, :cond_a2
new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;
invoke-direct {v6, p1, p5}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
:goto_29
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
if-eqz v6, :cond_8a
const/4 v6, -0x1
if-ne p4, v6, :cond_50
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v7, 0xb
if-lt v6, v7, :cond_d4
const/4 v1, 0x0
:try_start_37
sget-object v6, Landroid/support/v7/widget/AppCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I
const/4 v7, 0x0
invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v6, 0x0
invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v6
if-eqz v6, :cond_4b
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I
:try_end_4a
.catchall {:try_start_37 .. :try_end_4a} :catchall_cd
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_bf
move-result p4
:cond_4b
if-eqz v1, :cond_50
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:goto_50
:cond_50
const/4 v6, 0x1
if-ne p4, v6, :cond_8a
new-instance v4, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
invoke-direct {v4, p0, v6, p2, p3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
sget-object v7, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I
const/4 v8, 0x0
invoke-static {v6, p2, v7, p3, v8}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v3
sget v6, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_dropDownWidth:I
const/4 v7, -0x2
invoke-virtual {v3, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I
move-result v6
iput v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
sget v6, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_popupBackground:I
invoke-virtual {v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
sget v6, Landroid/support/v7/appcompat/R$styleable;->Spinner_android_prompt:I
invoke-virtual {v0, v6}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V
invoke-virtual {v3}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
iput-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
new-instance v6, Landroid/support/v7/widget/AppCompatSpinner$1;
invoke-direct {v6, p0, p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
:cond_8a
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
const/4 v6, 0x1
iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;
if-eqz v6, :cond_9c
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;
invoke-virtual {p0, v6}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
const/4 v6, 0x0
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;
:cond_9c
iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v6, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V
return-void
:cond_a2
sget v6, Landroid/support/v7/appcompat/R$styleable;->Spinner_popupTheme:I
const/4 v7, 0x0
invoke-virtual {v0, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v5
if-eqz v5, :cond_b4
new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;
invoke-direct {v6, p1, v5}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
goto/16 :goto_29
:cond_b4
sget-boolean v6, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z
if-nez v6, :cond_bd
move-object v6, p1
:goto_b9
iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
goto/16 :goto_29
:cond_bd
const/4 v6, 0x0
goto :goto_b9
:catch_bf
move-exception v2
:try_start_c0
const-string v6, "AppCompatSpinner"
const-string v7, "Could not read android:spinnerMode"
invoke-static {v6, v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_c7
.catchall {:try_start_c0 .. :try_end_c7} :catchall_cd
if-eqz v1, :cond_50
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
goto :goto_50
:catchall_cd
move-exception v6
if-eqz v1, :cond_d3
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:cond_d3
throw v6
:cond_d4
const/4 p4, 0x1
goto/16 :goto_50
.end method
.method static synthetic access$000(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
return-object v0
.end method
.method static synthetic access$100()Z
.registers 1
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z
return v0
.end method
.method static synthetic access$300(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v7/widget/AppCompatSpinner;)I
.registers 2
iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
return v0
.end method
.method static synthetic access$500(Landroid/support/v7/widget/AppCompatSpinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
move-result v0
return v0
.end method
.method private compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
.registers 16
if-nez p1, :cond_4
const/4 v8, 0x0
:goto_3
:cond_3
return v8
:cond_4
const/4 v8, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I
move-result v10
const/4 v11, 0x0
invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I
move-result v10
const/4 v11, 0x0
invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
const/4 v10, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v10
add-int/lit8 v11, v7, 0xf
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v1
sub-int v0, v1, v7
const/4 v10, 0x0
rsub-int/lit8 v11, v0, 0xf
sub-int v11, v7, v11
invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I
move-result v7
move v3, v7
:goto_38
if-ge v3, v1, :cond_64
invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I
move-result v6
if-eq v6, v4, :cond_42
move v4, v6
const/4 v5, 0x0
:cond_42
invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
if-nez v10, :cond_56
new-instance v10, Landroid/view/ViewGroup$LayoutParams;
const/4 v11, -0x2
const/4 v12, -0x2
invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_56
invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
move-result v10
invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I
move-result v8
add-int/lit8 v3, v3, 0x1
goto :goto_38
:cond_64
if-eqz p2, :cond_3
iget-object v10, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v10, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v10, v10, Landroid/graphics/Rect;->left:I
iget-object v11, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v11, v11, Landroid/graphics/Rect;->right:I
add-int/2addr v10, v11
add-int/2addr v8, v10
goto :goto_3
.end method
.method protected drawableStateChanged()V
.registers 2
invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
:cond_c
return-void
.end method
.method public getDropDownHorizontalOffset()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOffset()I
move-result v0
:goto_a
return v0
:cond_b
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_14
invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I
move-result v0
goto :goto_a
:cond_14
const/4 v0, 0x0
goto :goto_a
.end method
.method public getDropDownVerticalOffset()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getVerticalOffset()I
move-result v0
:goto_a
return v0
:cond_b
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_14
invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I
move-result v0
goto :goto_a
:cond_14
const/4 v0, 0x0
goto :goto_a
.end method
.method public getDropDownWidth()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_7
iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
:goto_6
return v0
:cond_7
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_10
invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I
move-result v0
goto :goto_6
:cond_10
const/4 v0, 0x0
goto :goto_6
.end method
.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_14
invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_a
:cond_14
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPopupContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_7
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
:goto_6
return-object v0
:cond_7
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_M:Z
if-eqz v0, :cond_10
invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;
move-result-object v0
goto :goto_6
:cond_10
const/4 v0, 0x0
goto :goto_6
.end method
.method public getPrompt()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;
move-result-object v0
goto :goto_a
.end method
.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V
:cond_14
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v1, :cond_32
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, -0x8000
if-ne v1, v2, :cond_32
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getMeasuredHeight()I
move-result v2
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setMeasuredDimension(II)V
:cond_32
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mForwardingListener:Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_d
.end method
.method public performClick()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V
const/4 v0, 0x1
:goto_12
return v0
:cond_13
invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z
move-result v0
goto :goto_12
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/SpinnerAdapter;
invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
.registers 6
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupSet:Z
if-nez v1, :cond_7
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;
:goto_6
:cond_6
return-void
:cond_7
invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v1, :cond_6
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
if-nez v1, :cond_25
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;
move-result-object v0
:goto_16
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
new-instance v2, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;
invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v3
invoke-direct {v2, p1, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_6
:cond_25
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopupContext:Landroid/content/Context;
goto :goto_16
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_c
return-void
.end method
.method public setBackgroundResource(I)V
.registers 3
.parameter
.end parameter
invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V
:cond_c
return-void
.end method
.method public setDropDownHorizontalOffset(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V
:cond_9
:goto_9
return-void
:cond_a
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V
goto :goto_9
.end method
.method public setDropDownVerticalOffset(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setVerticalOffset(I)V
:cond_9
:goto_9
return-void
:cond_a
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V
goto :goto_9
.end method
.method public setDropDownWidth(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_7
iput p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
:goto_6
:cond_6
return-void
:cond_7
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_6
invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V
goto :goto_6
.end method
.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_9
:goto_9
return-void
:cond_a
sget-boolean v0, Landroid/support/v7/widget/AppCompatSpinner;->IS_AT_LEAST_JB:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_9
.end method
.method public setPopupBackgroundResource(I)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setPrompt(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mPopup:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V
:goto_9
return-void
:cond_a
invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V
goto :goto_9
.end method
.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
:cond_9
return-void
.end method
.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
:cond_9
return-void
.end method