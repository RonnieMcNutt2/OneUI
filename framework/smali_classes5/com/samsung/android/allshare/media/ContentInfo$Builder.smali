.class public Lcom/samsung/android/allshare/media/ContentInfo$Builder;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mStartingPosition:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmStartingPosition(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    .line 72
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/allshare/media/ContentInfo;
    .registers 5

    .line 98
    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 99
    return-object v1

    .line 101
    :cond_a
    new-instance v0, Lcom/samsung/android/allshare/media/ContentInfo;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V

    return-object v0
.end method

.method public setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    .registers 3
    .param p1, "position"    # J

    .line 84
    iput-wide p1, p0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J

    .line 85
    return-object p0
.end method
