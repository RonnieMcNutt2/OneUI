.class Lcom/android/internal/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 652
    iput p2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 653
    iput p3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 654
    iput-object p4, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 655
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .registers 2

    .line 658
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_18

    .line 668
    const-string v0, "??"

    return-object v0

    .line 666
    :sswitch_8
    const-string/jumbo v0, "mv"

    return-object v0

    .line 664
    :sswitch_c
    const-string/jumbo v0, "up"

    return-object v0

    .line 662
    :sswitch_10
    const-string/jumbo v0, "rm"

    return-object v0

    .line 660
    :sswitch_14
    const-string v0, "add"

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_10
        0x4 -> :sswitch_c
        0x8 -> :sswitch_8
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 680
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 681
    return v0

    .line 683
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_59

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_59

    .line 687
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 689
    .local v2, "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_1c

    .line 690
    return v1

    .line 692
    :cond_1c
    const/16 v4, 0x8

    if-ne v3, v4, :cond_38

    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v0, :cond_38

    .line 694
    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_38

    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v3, v4, :cond_38

    .line 695
    return v0

    .line 698
    :cond_38
    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_3f

    .line 699
    return v1

    .line 701
    :cond_3f
    iget v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_46

    .line 702
    return v1

    .line 704
    :cond_46
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_53

    .line 705
    iget-object v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 706
    return v1

    .line 708
    :cond_53
    iget-object v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_58

    .line 709
    return v1

    .line 712
    :cond_58
    return v0

    .line 684
    .end local v2    # "op":Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    :cond_59
    :goto_59
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 717
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 718
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    .line 719
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v2

    .line 720
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    return-object v0
.end method
