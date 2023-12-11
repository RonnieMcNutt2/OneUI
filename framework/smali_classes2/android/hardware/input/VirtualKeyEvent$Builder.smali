.class public final Landroid/hardware/input/VirtualKeyEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mEventTimeNanos:J

.field private mKeyCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    .line 238
    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/input/VirtualKeyEvent;
    .registers 9

    .line 245
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    if-eq v0, v1, :cond_17

    .line 249
    new-instance v0, Landroid/hardware/input/VirtualKeyEvent;

    iget v3, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iget v4, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    iget-wide v5, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/VirtualKeyEvent;-><init>(IIJLandroid/hardware/input/VirtualKeyEvent-IA;)V

    return-object v0

    .line 246
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual key event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAction(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .registers 4
    .param p1, "action"    # I

    .line 268
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 269
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_e
    :goto_e
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    .line 272
    return-object p0
.end method

.method public setEventTimeNanos(J)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .registers 5
    .param p1, "eventTimeNanos"    # J

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 288
    iput-wide p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mEventTimeNanos:J

    .line 289
    return-object p0

    .line 286
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyCode(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .registers 2
    .param p1, "keyCode"    # I

    .line 258
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    .line 259
    return-object p0
.end method
