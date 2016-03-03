.class  Landroid/support/v4/view/LayoutInflaterCompatBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatBase.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
.registers 3
if-eqz p1, :cond_b
new-instance v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
invoke-direct {v0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
:goto_7
invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method