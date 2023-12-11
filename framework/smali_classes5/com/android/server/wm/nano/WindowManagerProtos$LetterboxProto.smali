.class public final Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WindowManagerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/nano/WindowManagerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LetterboxProto"
.end annotation


# static fields
.field public static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field public static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT:I = 0x0

.field public static final LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT:I = 0x2

.field public static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM:I = 0x2

.field public static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER:I = 0x1

.field public static final LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP:I

.field private static volatile _emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;


# instance fields
.field public letterboxPositionForBookModeReachability:I

.field public letterboxPositionForHorizontalReachability:I

.field public letterboxPositionForTabletopModeReachability:I

.field public letterboxPositionForVerticalReachability:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->clear()Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 480
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2

    .line 455
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    if-nez v0, :cond_15

    .line 456
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_7
    sget-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    if-nez v1, :cond_10

    .line 459
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    sput-object v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    .line 461
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 463
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->_emptyArray:[Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 596
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 2

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 484
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 485
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 486
    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->cachedSize:I

    .line 488
    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    .line 511
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 512
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    if-eqz v1, :cond_f

    .line 513
    nop

    .line 514
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_f
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    if-eqz v1, :cond_1a

    .line 517
    nop

    .line 518
    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    :cond_1a
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    if-eqz v1, :cond_25

    .line 521
    nop

    .line 522
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_25
    iget v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    if-eqz v1, :cond_30

    .line 525
    nop

    .line 526
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 528
    :cond_30
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 537
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_3e

    .line 541
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 542
    return-object p0

    .line 580
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 581
    .local v1, "value":I
    packed-switch v1, :pswitch_data_54

    goto :goto_19

    .line 585
    :pswitch_17
    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 588
    :goto_19
    goto :goto_3c

    .line 569
    .end local v1    # "value":I
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 570
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_5e

    goto :goto_24

    .line 574
    :pswitch_22
    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 577
    :goto_24
    goto :goto_3c

    .line 558
    .end local v1    # "value":I
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 559
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_68

    goto :goto_2f

    .line 563
    :pswitch_2d
    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 566
    :goto_2f
    goto :goto_3c

    .line 547
    .end local v1    # "value":I
    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 548
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_72

    goto :goto_3a

    .line 552
    :pswitch_38
    iput v1, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 555
    :goto_3a
    goto :goto_3c

    .line 539
    .end local v1    # "value":I
    :sswitch_3b
    return-object p0

    .line 591
    .end local v0    # "tag":I
    :cond_3c
    :goto_3c
    goto :goto_1

    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_3b
        0x8 -> :sswitch_30
        0x10 -> :sswitch_25
        0x18 -> :sswitch_1a
        0x20 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    if-eqz v0, :cond_8

    .line 495
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 497
    :cond_8
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    if-eqz v0, :cond_10

    .line 498
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 500
    :cond_10
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    if-eqz v0, :cond_18

    .line 501
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 503
    :cond_18
    iget v0, p0, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    if-eqz v0, :cond_20

    .line 504
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 506
    :cond_20
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 507
    return-void
.end method
