.class public Landroid/support/v4/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"
.field public final first:Ljava/lang/Object;
.field public final second:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
iput-object p2, p0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
return-void
.end method
.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;
.registers 3
new-instance v0, Landroid/support/v4/util/Pair;
invoke-direct {v0, p0, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
return-object v0
.end method
.method private static objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_a
if-eqz p0, :cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Landroid/support/v4/util/Pair;
if-nez v2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
move-object v0, p1
check-cast v0, Landroid/support/v4/util/Pair;
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
iget-object v3, p0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
invoke-static {v2, v3}, Landroid/support/v4/util/Pair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
iget-object v3, p0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
invoke-static {v2, v3}, Landroid/support/v4/util/Pair;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
if-nez v0, :cond_c
move v0, v1
:goto_6
iget-object v2, p0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
if-nez v2, :cond_13
:goto_a
xor-int/2addr v0, v1
return v0
:cond_c
iget-object v0, p0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_6
:cond_13
iget-object v1, p0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_a
.end method