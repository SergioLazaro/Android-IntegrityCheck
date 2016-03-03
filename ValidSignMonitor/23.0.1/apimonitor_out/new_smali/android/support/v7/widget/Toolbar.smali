.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"
.field private static final TAG:Ljava/lang/String; = "Toolbar"
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field private mButtonGravity:I
.field private mCollapseButtonView:Landroid/widget/ImageButton;
.field private mCollapseDescription:Ljava/lang/CharSequence;
.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;
.field private mCollapsible:Z
.field private final mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
.field private mEatingHover:Z
.field private mEatingTouch:Z
.field  mExpandedActionView:Landroid/view/View;
.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.field private mGravity:I
.field private final mHiddenViews:Ljava/util/ArrayList;
.field private mLogoView:Landroid/widget/ImageView;
.field private mMaxButtonHeight:I
.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;
.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
.field private mNavButtonView:Landroid/widget/ImageButton;
.field private mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
.field private mPopupContext:Landroid/content/Context;
.field private mPopupTheme:I
.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;
.field private mSubtitleText:Ljava/lang/CharSequence;
.field private mSubtitleTextAppearance:I
.field private mSubtitleTextColor:I
.field private mSubtitleTextView:Landroid/widget/TextView;
.field private final mTempMargins:[I
.field private final mTempViews:Ljava/util/ArrayList;
.field private final mTintManager:Landroid/support/v7/widget/TintManager;
.field private mTitleMarginBottom:I
.field private mTitleMarginEnd:I
.field private mTitleMarginStart:I
.field private mTitleMarginTop:I
.field private mTitleText:Ljava/lang/CharSequence;
.field private mTitleTextAppearance:I
.field private mTitleTextColor:I
.field private mTitleTextView:Landroid/widget/TextView;
.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 27
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v20, Landroid/support/v7/widget/RtlSpacingHelper;
invoke-direct/range {v20 .. v20}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
const v20, 0x800013
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
new-instance v20, Ljava/util/ArrayList;
invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [I
move-object/from16 v20, v0
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I
new-instance v20, Landroid/support/v7/widget/Toolbar$1;
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
new-instance v20, Landroid/support/v7/widget/Toolbar$2;
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v20
sget-object v21, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I
const/16 v22, 0x0
move-object/from16 v0, v20
move-object/from16 v1, p2
move-object/from16 v2, v21
move/from16 v3, p3
move/from16 v4, v22
invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v5
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v20
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v20
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I
move/from16 v21, v0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I
move-result v20
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I
const/16 v20, 0x30
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v20
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v14
if-ltz v14, :cond_e7
move-object/from16 v0, p0
iput v14, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I
:cond_e7
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v13
if-ltz v13, :cond_f9
move-object/from16 v0, p0
iput v13, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
:cond_f9
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v15
if-ltz v15, :cond_10b
move-object/from16 v0, p0
iput v15, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
:cond_10b
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v12
if-ltz v12, :cond_11d
move-object/from16 v0, p0
iput v12, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
:cond_11d
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v20
move/from16 v0, v20
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I
const/high16 v21, -0x8000
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v9
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I
const/high16 v21, -0x8000
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I
move-result v6
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v7
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v8
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V
const/high16 v20, -0x8000
move/from16 v0, v20
if-ne v9, v0, :cond_176
const/high16 v20, -0x8000
move/from16 v0, v20
if-eq v6, v0, :cond_181
:cond_176
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v0, v9, v6}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V
:cond_181
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v19
invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-nez v20, :cond_1b2
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
:cond_1b2
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v18
invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-nez v20, :cond_1c7
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
:cond_1c7
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v20
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v17
if-eqz v17, :cond_1f5
move-object/from16 v0, p0
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
:cond_1f5
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v16
invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-nez v20, :cond_20a
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
:cond_20a
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v10
if-eqz v10, :cond_219
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V
:cond_219
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v11
invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-nez v20, :cond_22c
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V
:cond_22c
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v20
if-eqz v20, :cond_249
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I
move-result v20
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V
:cond_249
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I
move/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v20
if-eqz v20, :cond_266
sget v20, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v5, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I
move-result v20
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V
:cond_266
invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->getTintManager()Landroid/support/v7/widget/TintManager;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v7/widget/Toolbar;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V
return-void
.end method
.method static synthetic access$300(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v7/widget/Toolbar;)I
.registers 2
iget v0, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
return v0
.end method
.method private addCustomViewsWithGravity(Ljava/util/List;I)V
.registers 10
const/4 v4, 0x1
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v6
if-ne v6, v4, :cond_3e
:goto_7
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I
move-result v2
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v6
invoke-static {p2, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
invoke-interface {p1}, Ljava/util/List;->clear()V
if-eqz v4, :cond_40
add-int/lit8 v3, v2, -0x1
:goto_1a
if-ltz v3, :cond_65
invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
if-nez v6, :cond_3b
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v6
if-eqz v6, :cond_3b
iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I
move-result v6
if-ne v6, v0, :cond_3b
invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_3b
add-int/lit8 v3, v3, -0x1
goto :goto_1a
:cond_3e
const/4 v4, 0x0
goto :goto_7
:cond_40
const/4 v3, 0x0
:goto_41
if-ge v3, v2, :cond_65
invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
if-nez v6, :cond_62
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v6
if-eqz v6, :cond_62
iget v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I
move-result v6
if-ne v6, v0, :cond_62
invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_62
add-int/lit8 v3, v3, 0x1
goto :goto_41
:cond_65
return-void
.end method
.method private addSystemView(Landroid/view/View;Z)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-nez v1, :cond_1c
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
:goto_a
const/4 v2, 0x1
iput v2, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
if-eqz p2, :cond_2b
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
if-eqz v2, :cond_2b
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_1b
return-void
:cond_1c
invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v2
if-nez v2, :cond_27
invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
goto :goto_a
:cond_27
move-object v0, v1
check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
goto :goto_a
:cond_2b
invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_1b
.end method
.method private ensureCollapseButtonView()V
.registers 6
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
if-nez v1, :cond_40
new-instance v1, Landroid/widget/ImageButton;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
sget v4, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I
invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
const v1, 0x800003
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
and-int/lit8 v2, v2, 0x70
or-int/2addr v1, v2
iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
const/4 v1, 0x2
iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
new-instance v2, Landroid/support/v7/widget/Toolbar$3;
invoke-direct {v2, p0}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_40
return-void
.end method
.method private ensureLogoView()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-nez v0, :cond_f
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
:cond_f
return-void
.end method
.method private ensureMenu()V
.registers 4
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v1
if-nez v1, :cond_2c
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-nez v1, :cond_1f
new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
:cond_1f
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
:cond_2c
return-void
.end method
.method private ensureMenuView()V
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-nez v1, :cond_3f
new-instance v1, Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
const v1, 0x800005
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
and-int/lit8 v2, v2, 0x70
or-int/2addr v1, v2
iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V
:cond_3f
return-void
.end method
.method private ensureNavButtonView()V
.registers 6
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-nez v1, :cond_25
new-instance v1, Landroid/widget/ImageButton;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
sget v4, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I
invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
const v1, 0x800003
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I
and-int/lit8 v2, v2, 0x70
or-int/2addr v1, v2
iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_25
return-void
.end method
.method private getChildHorizontalGravity(I)I
.registers 6
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v2
invoke-static {p1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
and-int/lit8 v1, v0, 0x7
packed-switch v1, :pswitch_data_16
:pswitch_d
const/4 v3, 0x1
if-ne v2, v3, :cond_13
const/4 v3, 0x5
:goto_11
move v1, v3
:pswitch_12
return v1
:cond_13
const/4 v3, 0x3
goto :goto_11
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_12
:pswitch_d
:pswitch_12
:pswitch_d
:pswitch_12
.end packed-switch
.end method
.method private getChildTop(Landroid/view/View;I)I
.registers 14
const/4 v9, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
if-lez p2, :cond_37
sub-int v10, v1, p2
div-int/lit8 v0, v10, 0x2
:goto_11
iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
invoke-direct {p0, v10}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I
move-result v10
sparse-switch v10, :sswitch_data_62
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v4
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I
move-result v2
sub-int v10, v2, v5
sub-int v6, v10, v4
sub-int v10, v6, v1
div-int/lit8 v7, v10, 0x2
iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
if-ge v7, v10, :cond_4e
iget v7, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
:goto_34
:cond_34
add-int v9, v5, v7
:goto_36
return v9
:cond_37
move v0, v9
goto :goto_11
:sswitch_39
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v9
sub-int/2addr v9, v0
goto :goto_36
:sswitch_3f
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v10
sub-int/2addr v9, v10
sub-int/2addr v9, v1
iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
sub-int/2addr v9, v10
sub-int/2addr v9, v0
goto :goto_36
:cond_4e
sub-int v10, v2, v4
sub-int/2addr v10, v1
sub-int/2addr v10, v7
sub-int v8, v10, v5
iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
if-ge v8, v10, :cond_34
iget v10, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
sub-int/2addr v10, v8
sub-int v10, v7, v10
invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
move-result v7
goto :goto_34
:sswitch_data_62
.sparse-switch
0x30 -> :sswitch_39
0x50 -> :sswitch_3f
.end sparse-switch
.end method
.method private getChildVerticalGravity(I)I
.registers 4
and-int/lit8 v0, p1, 0x70
sparse-switch v0, :sswitch_data_a
iget v1, p0, Landroid/support/v7/widget/Toolbar;->mGravity:I
and-int/lit8 v0, v1, 0x70
:sswitch_9
return v0
:sswitch_data_a
.sparse-switch
0x10 -> :sswitch_9
0x30 -> :sswitch_9
0x50 -> :sswitch_9
.end sparse-switch
.end method
.method private getHorizontalMargins(Landroid/view/View;)I
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
move-result v1
invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
move-result v2
add-int/2addr v1, v2
return v1
.end method
.method private getMenuInflater()Landroid/view/MenuInflater;
.registers 3
new-instance v0, Landroid/support/v7/view/SupportMenuInflater;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method private getVerticalMargins(Landroid/view/View;)I
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
add-int/2addr v1, v2
return v1
.end method
.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
.registers 16
const/4 v12, 0x0
aget v0, p2, v12
const/4 v11, 0x1
aget v1, p2, v11
const/4 v10, 0x0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x0
:goto_c
if-ge v3, v2, :cond_3e
invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
check-cast v6, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v11, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I
sub-int v4, v11, v0
iget v11, v6, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I
sub-int v7, v11, v1
invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I
move-result v5
invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I
move-result v8
neg-int v11, v4
invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I
move-result v0
neg-int v11, v7
invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I
move-result v11
add-int/2addr v11, v5
add-int/2addr v11, v8
add-int/2addr v10, v11
add-int/lit8 v3, v3, 0x1
goto :goto_c
:cond_3e
return v10
.end method
.method private isChildOrHidden(Landroid/view/View;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eq v0, p0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private static isCustomView(Landroid/view/View;)Z
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method private layoutChildLeft(Landroid/view/View;I[II)I
.registers 12
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I
aget v5, p3, v6
sub-int v1, v4, v5
invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I
move-result v4
add-int/2addr p2, v4
neg-int v4, v1
invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I
move-result v4
aput v4, p3, v6
invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I
move-result v3
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
add-int v4, p2, v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v3
invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
iget v4, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I
add-int/2addr v4, v0
add-int/2addr p2, v4
return p2
.end method
.method private layoutChildRight(Landroid/view/View;I[II)I
.registers 13
const/4 v7, 0x1
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I
aget v5, p3, v7
sub-int v2, v4, v5
invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I
move-result v4
sub-int/2addr p2, v4
neg-int v4, v2
invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I
move-result v4
aput v4, p3, v7
invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I
move-result v3
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
sub-int v4, p2, v0
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int/2addr v5, v3
invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V
iget v4, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I
add-int/2addr v4, v0
sub-int/2addr p2, v4
return p2
.end method
.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
.registers 18
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;
iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
const/4 v9, 0x0
aget v9, p6, v9
sub-int v3, v8, v9
iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
const/4 v9, 0x1
aget v9, p6, v9
sub-int v6, v8, v9
const/4 v8, 0x0
invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I
move-result v4
const/4 v8, 0x0
invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I
move-result v7
add-int v2, v4, v7
const/4 v8, 0x0
const/4 v9, 0x0
neg-int v10, v3
invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
move-result v9
aput v9, p6, v8
const/4 v8, 0x1
const/4 v9, 0x0
neg-int v10, v6
invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
move-result v9
aput v9, p6, v8
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I
move-result v9
add-int/2addr v8, v9
add-int/2addr v8, v2
add-int/2addr v8, p3
iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
invoke-static {p2, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v9
add-int/2addr v8, v9
iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
add-int/2addr v8, v9
iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
add-int/2addr v8, v9
add-int v8, v8, p5
iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
invoke-static {p4, v8, v9}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I
move-result v0
invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
add-int/2addr v8, v2
return v8
.end method
.method private measureChildConstrained(Landroid/view/View;IIIII)V
.registers 15
const/high16 v7, 0x4000
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I
move-result v6
add-int/2addr v5, v6
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
add-int/2addr v5, v6
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v5, v6
add-int/2addr v5, p3
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
invoke-static {p2, v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v6
add-int/2addr v5, v6
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
add-int/2addr v5, v6
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
add-int/2addr v5, v6
add-int/2addr v5, p5
iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
invoke-static {p4, v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I
move-result v1
invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
if-eq v0, v7, :cond_4a
if-ltz p6, :cond_4a
if-eqz v0, :cond_4e
invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I
move-result v4
:goto_46
invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
:cond_4a
invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V
return-void
:cond_4e
move v4, p6
goto :goto_46
.end method
.method private postShowOverflowMenu()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private shouldCollapse()Z
.registers 6
const/4 v3, 0x0
iget-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z
if-nez v4, :cond_6
:goto_5
:cond_5
return v3
:cond_6
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_b
if-ge v2, v1, :cond_26
invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v4
if-eqz v4, :cond_23
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v4
if-lez v4, :cond_23
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
if-gtz v4, :cond_5
:cond_23
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_26
const/4 v3, 0x1
goto :goto_5
.end method
.method private shouldLayout(Landroid/view/View;)Z
.registers 4
if-eqz p1, :cond_12
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-ne v0, p0, :cond_12
invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method  addChildrenForExpandedActionView()V
.registers 4
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v1, v0, -0x1
:goto_8
if-ltz v1, :cond_18
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V
add-int/lit8 v1, v1, -0x1
goto :goto_8
:cond_18
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public canShowOverflowMenu()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v0
if-eqz v0, :cond_c
instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public collapseActionView()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-nez v1, :cond_b
const/4 v0, 0x0
:goto_5
if-eqz v0, :cond_a
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z
:cond_a
return-void
:cond_b
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v0, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
goto :goto_5
.end method
.method public dismissPopupMenus()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V
:cond_9
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
.registers 3
const/4 v1, -0x2
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V
return-object v0
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
.registers 3
instance-of v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;
if-eqz v0, :cond_c
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
check-cast p1, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V
:goto_b
return-object v0
:cond_c
instance-of v0, p1, Landroid/support/v7/app/ActionBar$LayoutParams;
if-eqz v0, :cond_18
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
check-cast p1, Landroid/support/v7/app/ActionBar$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
goto :goto_b
:cond_18
instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v0, :cond_24
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
goto :goto_b
:cond_24
new-instance v0, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_b
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public getContentInsetEnd()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I
move-result v0
return v0
.end method
.method public getContentInsetLeft()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I
move-result v0
return v0
.end method
.method public getContentInsetRight()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I
move-result v0
return v0
.end method
.method public getContentInsetStart()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I
move-result v0
return v0
.end method
.method public getLogo()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getLogoDescription()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getMenu()Landroid/view/Menu;
.registers 2
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
move-result-object v0
return-object v0
.end method
.method public getNavigationContentDescription()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
.registers 2
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getPopupTheme()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I
return v0
.end method
.method public getSubtitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;
if-nez v0, :cond_c
new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;
const/4 v1, 0x1
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V
iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;
return-object v0
.end method
.method public hasExpandedActionView()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v0, v0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public hideOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public inflateMenu(I)V
.registers 4
.parameter
.end parameter
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;
move-result-object v1
invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
return-void
.end method
.method public isOverflowMenuShowPending()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isOverflowMenuShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isTitleTruncated()Z
.registers 6
const/4 v3, 0x0
iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-nez v4, :cond_6
:goto_5
:cond_5
return v3
:cond_6
iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;
move-result-object v2
if-eqz v2, :cond_5
invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I
move-result v1
const/4 v0, 0x0
:goto_13
if-ge v0, v1, :cond_5
invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I
move-result v4
if-lez v4, :cond_1d
const/4 v3, 0x1
goto :goto_5
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_13
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/16 v5, 0x9
const/4 v4, 0x1
const/4 v3, 0x0
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v0
if-ne v0, v5, :cond_c
iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z
:cond_c
iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z
if-nez v2, :cond_1a
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z
move-result v1
if-ne v0, v5, :cond_1a
if-nez v1, :cond_1a
iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z
:cond_1a
const/16 v2, 0xa
if-eq v0, v2, :cond_21
const/4 v2, 0x3
if-ne v0, v2, :cond_23
:cond_21
iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z
:cond_23
return v4
.end method
.method protected onLayout(ZIIII)V
.registers 56
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v46
const/16 v47, 0x1
move/from16 v0, v46
move/from16 v1, v47
if-ne v0, v1, :cond_319
const/16 v16, 0x1
:goto_e
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I
move-result v45
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I
move-result v14
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I
move-result v24
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I
move-result v25
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v26
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v23
move/from16 v20, v24
sub-int v29, v45, v25
move-object/from16 v0, p0
iget-object v12, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I
const/16 v46, 0x0
const/16 v47, 0x1
const/16 v48, 0x0
aput v48, v12, v47
aput v48, v12, v46
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I
move-result v5
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v46
if-eqz v46, :cond_5e
if-eqz v16, :cond_31d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
:cond_5e
:goto_5e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v46
if-eqz v46, :cond_80
if-eqz v16, :cond_32f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
:goto_80
:cond_80
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v46
if-eqz v46, :cond_a2
if-eqz v16, :cond_341
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
:cond_a2
:goto_a2
const/16 v46, 0x0
const/16 v47, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I
move-result v48
sub-int v48, v48, v20
invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I
move-result v47
aput v47, v12, v46
const/16 v46, 0x1
const/16 v47, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I
move-result v48
sub-int v49, v45, v25
sub-int v49, v49, v29
sub-int v48, v48, v49
invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I
move-result v47
aput v47, v12, v46
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I
move-result v46
move/from16 v0, v20
move/from16 v1, v46
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v20
sub-int v46, v45, v25
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I
move-result v47
sub-int v46, v46, v47
move/from16 v0, v29
move/from16 v1, v46
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v29
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v46
if-eqz v46, :cond_104
if-eqz v16, :cond_353
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
:goto_104
:cond_104
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v46
if-eqz v46, :cond_126
if-eqz v16, :cond_365
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
:cond_126
:goto_126
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v17
const/16 v39, 0x0
if-eqz v18, :cond_16e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v47, v0
invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v47
add-int v46, v46, v47
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v47, v0
add-int v46, v46, v47
add-int v39, v39, v46
:cond_16e
if-eqz v17, :cond_198
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v47, v0
invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v47
add-int v46, v46, v47
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v47, v0
add-int v46, v46, v47
add-int v39, v39, v46
:cond_198
if-nez v18, :cond_19c
if-eqz v17, :cond_2de
:cond_19c
if-eqz v18, :cond_377
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v43, v0
:goto_1a4
if-eqz v17, :cond_37f
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
:goto_1aa
invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v44
check-cast v44, Landroid/support/v7/widget/Toolbar$LayoutParams;
invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
check-cast v7, Landroid/support/v7/widget/Toolbar$LayoutParams;
if-eqz v18, :cond_1c4
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
if-gtz v46, :cond_1d2
:cond_1c4
if-eqz v17, :cond_385
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
if-lez v46, :cond_385
:cond_1d2
const/16 v38, 0x1
:goto_1d4
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I
move/from16 v46, v0
and-int/lit8 v46, v46, 0x70
sparse-switch v46, :sswitch_data_56a
sub-int v46, v14, v26
sub-int v31, v46, v23
sub-int v46, v31, v39
div-int/lit8 v32, v46, 0x2
move-object/from16 v0, v44
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
move/from16 v47, v0
add-int v46, v46, v47
move/from16 v0, v32
move/from16 v1, v46
if-ge v0, v1, :cond_39f
move-object/from16 v0, v44
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
move/from16 v47, v0
add-int v32, v46, v47
:cond_209
:goto_209
add-int v42, v26, v32
:goto_20b
if-eqz v16, :cond_3eb
if-eqz v38, :cond_3e7
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I
move/from16 v46, v0
:goto_215
const/16 v47, 0x1
aget v47, v12, v47
sub-int v28, v46, v47
const/16 v46, 0x0
move/from16 v0, v46
move/from16 v1, v28
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v46
sub-int v29, v29, v46
const/16 v46, 0x1
const/16 v47, 0x0
move/from16 v0, v28
neg-int v0, v0
move/from16 v48, v0
invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I
move-result v47
aput v47, v12, v46
move/from16 v41, v29
move/from16 v36, v29
if-eqz v18, :cond_283
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
sub-int v40, v41, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v46
add-int v37, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, v46
move/from16 v1, v40
move/from16 v2, v42
move/from16 v3, v41
move/from16 v4, v37
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
move/from16 v46, v0
sub-int v41, v40, v46
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v46, v0
add-int v42, v37, v46
:cond_283
if-eqz v17, :cond_2d4
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
add-int v42, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
sub-int v35, v36, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v46
add-int v34, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, v46
move/from16 v1, v35
move/from16 v2, v42
move/from16 v3, v36
move/from16 v4, v34
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
move/from16 v46, v0
sub-int v36, v36, v46
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v46, v0
add-int v42, v34, v46
:cond_2d4
if-eqz v38, :cond_2de
move/from16 v0, v41
move/from16 v1, v36
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v29
:goto_2de
:cond_2de
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
const/16 v47, 0x3
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v47
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I
move-result v21
const/4 v15, 0x0
:goto_2fa
move/from16 v0, v21
if-ge v15, v0, :cond_4c2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
move-object/from16 v0, v46
invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v46
check-cast v46, Landroid/view/View;
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
add-int/lit8 v15, v15, 0x1
goto :goto_2fa
:cond_319
const/16 v16, 0x0
goto/16 :goto_e
:cond_31d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
goto/16 :goto_5e
:cond_32f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
goto/16 :goto_80
:cond_341
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
goto/16 :goto_a2
:cond_353
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
goto/16 :goto_104
:cond_365
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v20
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v20
goto/16 :goto_126
:cond_377
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v43, v0
goto/16 :goto_1a4
:cond_37f
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
goto/16 :goto_1aa
:cond_385
const/16 v38, 0x0
goto/16 :goto_1d4
:sswitch_389
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v46
move-object/from16 v0, v44
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v47, v0
add-int v46, v46, v47
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
move/from16 v47, v0
add-int v42, v46, v47
goto/16 :goto_20b
:cond_39f
sub-int v46, v14, v23
sub-int v46, v46, v39
sub-int v46, v46, v32
sub-int v33, v46, v26
move-object/from16 v0, v44
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v46, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
move/from16 v47, v0
add-int v46, v46, v47
move/from16 v0, v33
move/from16 v1, v46
if-ge v0, v1, :cond_209
const/16 v46, 0x0
iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v47, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
move/from16 v48, v0
add-int v47, v47, v48
sub-int v47, v47, v33
sub-int v47, v32, v47
invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I
move-result v32
goto/16 :goto_209
:sswitch_3d3
sub-int v46, v14, v23
iget v0, v7, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v47, v0
sub-int v46, v46, v47
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
move/from16 v47, v0
sub-int v46, v46, v47
sub-int v42, v46, v39
goto/16 :goto_20b
:cond_3e7
const/16 v46, 0x0
goto/16 :goto_215
:cond_3eb
if-eqz v38, :cond_4be
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I
move/from16 v46, v0
:goto_3f3
const/16 v47, 0x0
aget v47, v12, v47
sub-int v19, v46, v47
const/16 v46, 0x0
move/from16 v0, v46
move/from16 v1, v19
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v46
add-int v20, v20, v46
const/16 v46, 0x0
const/16 v47, 0x0
move/from16 v0, v19
neg-int v0, v0
move/from16 v48, v0
invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I
move-result v47
aput v47, v12, v46
move/from16 v40, v20
move/from16 v35, v20
if-eqz v18, :cond_461
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
add-int v41, v40, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v46
add-int v37, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, v46
move/from16 v1, v40
move/from16 v2, v42
move/from16 v3, v41
move/from16 v4, v37
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
move/from16 v46, v0
add-int v40, v41, v46
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v46, v0
add-int v42, v37, v46
:cond_461
if-eqz v17, :cond_4b2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
move/from16 v46, v0
add-int v42, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v46
add-int v36, v35, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v46
add-int v34, v42, v46
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v46, v0
move-object/from16 v0, v46
move/from16 v1, v35
move/from16 v2, v42
move/from16 v3, v36
move/from16 v4, v34
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
move/from16 v46, v0
add-int v35, v36, v46
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
move/from16 v46, v0
add-int v42, v34, v46
:cond_4b2
if-eqz v38, :cond_2de
move/from16 v0, v40
move/from16 v1, v35
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v20
goto/16 :goto_2de
:cond_4be
const/16 v46, 0x0
goto/16 :goto_3f3
:cond_4c2
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
const/16 v47, 0x5
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v47
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I
move-result v30
const/4 v15, 0x0
:goto_4de
move/from16 v0, v30
if-ge v15, v0, :cond_4fd
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
move-object/from16 v0, v46
invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v46
check-cast v46, Landroid/view/View;
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v29
invoke-direct {v0, v1, v2, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I
move-result v29
add-int/lit8 v15, v15, 0x1
goto :goto_4de
:cond_4fd
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
const/16 v47, 0x1
move-object/from16 v0, p0
move-object/from16 v1, v46
move/from16 v2, v47
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1, v12}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I
move-result v11
sub-int v46, v45, v24
sub-int v46, v46, v25
div-int/lit8 v46, v46, 0x2
add-int v27, v24, v46
div-int/lit8 v13, v11, 0x2
sub-int v8, v27, v13
add-int v9, v8, v11
move/from16 v0, v20
if-ge v8, v0, :cond_556
move/from16 v8, v20
:goto_530
:cond_530
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I
move-result v10
const/4 v15, 0x0
:goto_53b
if-ge v15, v10, :cond_55f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
move-object/from16 v0, v46
invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v46
check-cast v46, Landroid/view/View;
move-object/from16 v0, p0
move-object/from16 v1, v46
invoke-direct {v0, v1, v8, v12, v5}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I
move-result v8
add-int/lit8 v15, v15, 0x1
goto :goto_53b
:cond_556
move/from16 v0, v29
if-le v9, v0, :cond_530
sub-int v46, v9, v29
sub-int v8, v8, v46
goto :goto_530
:cond_55f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;
move-object/from16 v46, v0
invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V
return-void
nop
:sswitch_data_56a
.sparse-switch
0x30 -> :sswitch_389
0x50 -> :sswitch_3d3
.end sparse-switch
.end method
.method protected onMeasure(II)V
.registers 40
const/4 v6, 0x0
const/16 v25, 0x0
const/16 v22, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I
invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_201
const/16 v29, 0x1
const/16 v28, 0x0
:goto_13
const/16 v33, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_6e
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
const/4 v8, 0x0
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I
move-result v5
add-int v33, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_6e
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_c7
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
const/4 v8, 0x0
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I
move-result v5
add-int v33, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_c7
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I
move-result v24
move/from16 v0, v24
move/from16 v1, v33
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/2addr v6, v3
const/4 v3, 0x0
sub-int v5, v24, v33
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v13, v29
const/16 v32, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_138
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
const/4 v8, 0x0
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I
move-result v5
add-int v32, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_138
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I
move-result v23
move/from16 v0, v23
move/from16 v1, v32
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/2addr v6, v3
const/4 v3, 0x0
sub-int v5, v23, v32
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v13, v28
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_192
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
const/4 v8, 0x0
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
move-object v9, v13
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I
move-result v3
add-int/2addr v6, v3
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_192
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_1d6
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
const/4 v8, 0x0
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
move-object v9, v13
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I
move-result v3
add-int/2addr v6, v3
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_1d6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I
move-result v21
const/16 v26, 0x0
:goto_1dc
move/from16 v0, v26
move/from16 v1, v21
if-ge v0, v1, :cond_230
move-object/from16 v0, p0
move/from16 v1, v26
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v27
check-cast v27, Landroid/support/v7/widget/Toolbar$LayoutParams;
move-object/from16 v0, v27
iget v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
if-nez v3, :cond_1fe
move-object/from16 v0, p0
invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-nez v3, :cond_207
:goto_1fe
:cond_1fe
add-int/lit8 v26, v26, 0x1
goto :goto_1dc
:cond_201
const/16 v29, 0x0
const/16 v28, 0x1
goto/16 :goto_13
:cond_207
const/4 v8, 0x0
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v7, p2
move-object v9, v13
invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I
move-result v3
add-int/2addr v6, v3
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
invoke-direct {v0, v4}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v25
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
goto :goto_1fe
:cond_230
const/16 v36, 0x0
const/16 v34, 0x0
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I
add-int v12, v3, v5
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I
add-int v35, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_29a
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
add-int v10, v6, v35
move-object/from16 v7, p0
move/from16 v9, p1
move/from16 v11, p2
invoke-direct/range {v7 .. v13}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I
move-result v36
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I
move-result v5
add-int v36, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int v34, v3, v5
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_29a
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-direct {v0, v3}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_2e3
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
add-int v17, v6, v35
add-int v19, v34, v12
move-object/from16 v14, p0
move/from16 v16, p1
move/from16 v18, p2
move-object/from16 v20, v13
invoke-direct/range {v14 .. v20}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I
move-result v3
move/from16 v0, v36
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v36
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v3
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I
move-result v5
add-int/2addr v3, v5
add-int v34, v34, v3
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v22
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v22
:cond_2e3
add-int v6, v6, v36
move/from16 v0, v25
move/from16 v1, v34
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v25
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I
move-result v5
add-int/2addr v3, v5
add-int/2addr v6, v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I
move-result v5
add-int/2addr v3, v5
add-int v25, v25, v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I
move-result v3
invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I
move-result v3
const/high16 v5, -0x100
and-int v5, v5, v22
move/from16 v0, p1
invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v31
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I
move-result v3
move/from16 v0, v25
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
shl-int/lit8 v5, v22, 0x10
move/from16 v0, p2
invoke-static {v3, v0, v5}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v30
invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z
move-result v3
if-eqz v3, :cond_32e
const/16 v30, 0x0
:cond_32e
move-object/from16 v0, p0
move/from16 v1, v31
move/from16 v2, v30
invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 6
move-object v2, p1
check-cast v2, Landroid/support/v7/widget/Toolbar$SavedState;
invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v3
invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v3, :cond_31
iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v1
:goto_14
iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I
if-eqz v3, :cond_29
iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-eqz v3, :cond_29
if-eqz v1, :cond_29
iget v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I
invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_29
invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z
:cond_29
iget-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z
if-eqz v3, :cond_30
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V
:cond_30
return-void
:cond_31
const/4 v1, 0x0
goto :goto_14
.end method
.method public onRtlPropertiesChanged(I)V
.registers 5
const/4 v0, 0x1
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x11
if-lt v1, v2, :cond_a
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V
:cond_a
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
if-ne p1, v0, :cond_12
:goto_e
invoke-virtual {v1, v0}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V
return-void
:cond_12
const/4 v0, 0x0
goto :goto_e
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 3
new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;
invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I
move-result v1
iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z
move-result v1
iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z
return-object v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v0
if-nez v0, :cond_a
iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z
:cond_a
iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z
if-nez v2, :cond_18
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
if-nez v0, :cond_18
if-nez v1, :cond_18
iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z
:cond_18
if-eq v0, v3, :cond_1d
const/4 v2, 0x3
if-ne v0, v2, :cond_1f
:cond_1d
iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z
:cond_1f
return v3
.end method
.method  removeChildrenForExpandedActionView()V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I
move-result v1
add-int/lit8 v2, v1, -0x1
:goto_6
if-ltz v2, :cond_26
invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/Toolbar$LayoutParams;
iget v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
const/4 v5, 0x2
if-eq v4, v5, :cond_23
iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eq v0, v4, :cond_23
invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V
iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_23
add-int/lit8 v2, v2, -0x1
goto :goto_6
:cond_26
return-void
.end method
.method public setCollapsible(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V
return-void
.end method
.method public setContentInsetsAbsolute(II)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V
return-void
.end method
.method public setContentInsetsRelative(II)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V
return-void
.end method
.method public setLogo(I)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLogo(Landroid/graphics/drawable/Drawable;)V
.registers 4
if-eqz p1, :cond_1d
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V
:cond_13
:goto_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1c
return-void
:cond_1d
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_13
.end method
.method public setLogoDescription(I)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setLogoDescription(Ljava/lang/CharSequence;)V
.registers 3
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_9
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
:cond_12
return-void
.end method
.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
if-nez p1, :cond_9
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-nez v1, :cond_9
:cond_8
:goto_8
return-void
:cond_9
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v0
if-eq v0, p1, :cond_8
if-eqz v0, :cond_20
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
:cond_20
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
if-nez v1, :cond_2b
new-instance v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
invoke-direct {v1, p0, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
:cond_2b
invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
if-eqz p1, :cond_4b
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
invoke-virtual {p1, p2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
invoke-virtual {p1, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
:goto_3c
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v1, p2}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
goto :goto_8
:cond_4b
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
invoke-virtual {p2, v1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V
goto :goto_3c
.end method
.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
return-void
.end method
.method public setNavigationContentDescription(I)V
.registers 3
.parameter
.end parameter
if-eqz p1, :cond_e
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_a
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
.registers 3
.parameter
.end parameter
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_9
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
:cond_12
return-void
.end method
.method public setNavigationIcon(I)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTintManager:Landroid/support/v7/widget/TintManager;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
.registers 4
.parameter
.end parameter
if-eqz p1, :cond_1d
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V
:cond_13
:goto_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1c
return-void
:cond_1d
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_13
.end method
.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
return-void
.end method
.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setPopupTheme(I)V
.registers 4
.parameter
.end parameter
iget v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I
if-eq v0, p1, :cond_e
iput p1, p0, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I
if-nez p1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
:cond_e
:goto_e
return-void
:cond_f
new-instance v0, Landroid/view/ContextThemeWrapper;
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;
goto :goto_e
.end method
.method public setSubtitle(I)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setSubtitle(Ljava/lang/CharSequence;)V
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_51
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
if-nez v1, :cond_37
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/widget/TextView;
invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I
if-eqz v1, :cond_2c
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I
invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_2c
iget v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I
if-eqz v1, :cond_37
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
:cond_37
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
const/4 v2, 0x1
invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V
:goto_45
:cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
if-eqz v1, :cond_4e
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_4e
iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;
return-void
:cond_51
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
if-eqz v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_45
.end method
.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iput p2, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_b
return-void
.end method
.method public setSubtitleTextColor(I)V
.registers 3
.parameter
.end parameter
iput p1, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_b
return-void
.end method
.method public setTitle(I)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_51
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-nez v1, :cond_37
invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/widget/TextView;
invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I
if-eqz v1, :cond_2c
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I
invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_2c
iget v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I
if-eqz v1, :cond_37
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
iget v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
:cond_37
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
const/4 v2, 0x1
invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V
:goto_45
:cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-eqz v1, :cond_4e
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_4e
iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;
return-void
:cond_51
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-eqz v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-direct {p0, v1}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_45
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_45
.end method
.method public setTitleTextAppearance(Landroid/content/Context;I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iput p2, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V
:cond_b
return-void
.end method
.method public setTitleTextColor(I)V
.registers 3
.parameter
.end parameter
iput p1, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_b
return-void
.end method
.method public showOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method