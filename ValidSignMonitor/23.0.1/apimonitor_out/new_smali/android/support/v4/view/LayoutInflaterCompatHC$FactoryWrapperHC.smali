.class  Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
.super Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
.source "LayoutInflaterCompatHC.java"
.implements Landroid/view/LayoutInflater$Factory2;
.method constructor <init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
return-void
.end method
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;
invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
return-object v0
.end method