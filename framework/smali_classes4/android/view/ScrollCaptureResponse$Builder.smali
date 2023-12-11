.class public Landroid/view/ScrollCaptureResponse$Builder;
.super Ljava/lang/Object;
.source "ScrollCaptureResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBoundsInWindow:Landroid/graphics/Rect;

.field private mBuilderFieldsSet:J

.field private mConnection:Landroid/view/IScrollCaptureConnection;

.field private mDescription:Ljava/lang/String;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mWindowBounds:Landroid/graphics/Rect;

.field private mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 284
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 409
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 413
    return-void

    .line 410
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureResponse$Builder;->setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;

    .line 367
    :cond_c
    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-object p0
.end method

.method public build()Landroid/view/ScrollCaptureResponse;
    .registers 10

    .line 373
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 374
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 376
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 377
    const-string v2, ""

    iput-object v2, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    .line 379
    :cond_17
    const-wide/16 v2, 0x2

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_21

    .line 380
    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    .line 382
    :cond_21
    const-wide/16 v6, 0x4

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_2a

    .line 383
    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    .line 385
    :cond_2a
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_33

    .line 386
    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 388
    :cond_33
    const-wide/16 v6, 0x10

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_3c

    .line 389
    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    .line 391
    :cond_3c
    const-wide/16 v6, 0x20

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_45

    .line 392
    iput-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    .line 394
    :cond_45
    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_53

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    .line 397
    :cond_53
    new-instance v0, Landroid/view/ScrollCaptureResponse;

    iget-object v2, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    iget-object v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    iget-object v7, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/ScrollCaptureResponse;-><init>(Ljava/lang/String;Landroid/view/IScrollCaptureConnection;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 405
    .local v0, "o":Landroid/view/ScrollCaptureResponse;
    return-object v0
.end method

.method public setBoundsInWindow(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 324
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 325
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 326
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    .line 327
    return-object p0
.end method

.method public setConnection(Landroid/view/IScrollCaptureConnection;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Landroid/view/IScrollCaptureConnection;

    .line 302
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 303
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 304
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    .line 305
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 292
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 293
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/ScrollCaptureResponse$Builder;"
        }
    .end annotation

    .line 357
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 358
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 359
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    .line 360
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 346
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 347
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 348
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public setWindowBounds(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Landroid/graphics/Rect;

    .line 313
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 314
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 315
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    .line 316
    return-object p0
.end method

.method public setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    .line 336
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    .line 337
    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    .line 338
    return-object p0
.end method
