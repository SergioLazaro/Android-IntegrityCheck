.class public Landroid/support/v7/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.field static final ITEM_LAYOUT:I = 0x0
.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"
.field private final mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
.field private mAnchorView:Landroid/view/View;
.field private mContentWidth:I
.field private final mContext:Landroid/content/Context;
.field private mDropDownGravity:I
.field  mForceShowIcon:Z
.field private mHasContentWidth:Z
.field private final mInflater:Landroid/view/LayoutInflater;
.field private mMeasureParent:Landroid/view/ViewGroup;
.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;
.field private final mOverflowOnly:Z
.field private mPopup:Landroid/support/v7/widget/ListPopupWindow;
.field private final mPopupMaxWidth:I
.field private final mPopupStyleAttr:I
.field private final mPopupStyleRes:I
.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field private mTreeObserver:Landroid/view/ViewTreeObserver;
.method static constructor <clinit>()V
.registers 1
sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I
sput v0, Landroid/support/v7/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 9
const/4 v3, 0x0
const/4 v4, 0x0
sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V
.registers 10
const/4 v4, 0x0
sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
.registers 13
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
iput v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I
iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
iput-object p2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
new-instance v1, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
iget-object v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-direct {v1, p0, v2}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuPopupHelper;Landroid/support/v7/view/menu/MenuBuilder;)V
iput-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
iput-boolean p4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z
iput p5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I
iput p6, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v1, v1, 0x2
sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I
iput-object p3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$100(Landroid/support/v7/view/menu/MenuPopupHelper;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z
return v0
.end method
.method static synthetic access$200(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v7/view/menu/MenuPopupHelper;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method private measureContentWidth()I
.registers 13
const/4 v10, 0x0
const/4 v7, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
const/4 v3, 0x0
:goto_13
if-ge v3, v1, :cond_3d
invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v8
if-eq v8, v4, :cond_1d
move v4, v8
const/4 v5, 0x0
:cond_1d
iget-object v10, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;
if-nez v10, :cond_2a
new-instance v10, Landroid/widget/FrameLayout;
iget-object v11, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v10, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;
:cond_2a
iget-object v10, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;
invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
move-result v6
iget v10, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I
if-lt v6, v10, :cond_3e
iget v7, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupMaxWidth:I
:cond_3d
return v7
:cond_3e
if-le v6, v7, :cond_41
move v7, v6
:cond_41
add-int/lit8 v3, v3, 0x1
goto :goto_13
.end method
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public dismiss()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V
:cond_b
return-void
.end method
.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public flagActionItems()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getGravity()I
.registers 2
iget v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I
return v0
.end method
.method public getId()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "MenuPopupHelpers manage their own views"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
return-object v0
.end method
.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 3
return-void
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eq p1, v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v0, :cond_4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
goto :goto_4
.end method
.method public onDismiss()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
:cond_1c
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iput-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
:cond_23
return-void
.end method
.method public onGlobalLayout()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z
move-result v1
if-eqz v1, :cond_13
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/view/View;->isShown()Z
move-result v1
if-nez v1, :cond_14
:cond_10
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V
:cond_13
:goto_13
return-void
:cond_14
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z
move-result v1
if-eqz v1, :cond_13
iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->show()V
goto :goto_13
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
#getter for: Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-static {v0}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;)Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v1
invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z
return-void
.end method
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_f
const/16 v1, 0x52
if-ne p2, v1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 2
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
.registers 9
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z
move-result v5
if-eqz v5, :cond_44
new-instance v4, Landroid/support/v7/view/menu/MenuPopupHelper;
iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
iget-object v6, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
invoke-direct {v4, v5, p1, v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;)V
iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I
move-result v1
const/4 v2, 0x0
:goto_1a
if-ge v2, v1, :cond_2d
invoke-virtual {p1, v2}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z
move-result v5
if-eqz v5, :cond_41
invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_41
const/4 v3, 0x1
:cond_2d
invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V
invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z
move-result v5
if-eqz v5, :cond_44
iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v5, :cond_3f
iget-object v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-interface {v5, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
:cond_3f
const/4 v5, 0x1
:goto_40
return v5
:cond_41
add-int/lit8 v2, v2, 0x1
goto :goto_1a
:cond_44
const/4 v5, 0x0
goto :goto_40
.end method
.method public setAnchorView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
return-void
.end method
.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
return-void
.end method
.method public setForceShowIcon(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z
return-void
.end method
.method public setGravity(I)V
.registers 2
iput p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I
return-void
.end method
.method public show()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "MenuPopupHelper cannot be used without an anchor"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public tryShow()Z
.registers 9
const/4 v0, 0x0
const/4 v2, 0x1
new-instance v3, Landroid/support/v7/widget/ListPopupWindow;
iget-object v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
const/4 v5, 0x0
iget v6, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I
iget v7, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I
invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
iget-object v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3, v2}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V
iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;
if-eqz v1, :cond_70
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-nez v3, :cond_2f
move v0, v2
:cond_2f
invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_3c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;
invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_3c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
iget v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setDropDownGravity(I)V
iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z
if-nez v3, :cond_54
invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->measureContentWidth()I
move-result v3
iput v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I
iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z
:cond_54
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
iget v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContentWidth:I
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
const/4 v4, 0x2
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setInputMethodMode(I)V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
:goto_6f
return v2
:cond_70
move v2, v0
goto :goto_6f
.end method
.method public updateMenuView(Z)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mHasContentWidth:Z
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAdapter:Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V
:cond_c
return-void
.end method