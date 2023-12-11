.class public Lcom/samsung/android/aod/AODToast$Builder;
.super Ljava/lang/Object;
.source "AODToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDuration:I

.field private mDurationMillis:J

.field private mGravity:I

.field private mHorizontalMargin:F

.field private final mText:Ljava/lang/String;

.field private mVerticalMargin:F

.field private mX:I

.field private mY:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/samsung/android/aod/AODToast$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDurationMillis(Lcom/samsung/android/aod/AODToast$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmGravity(Lcom/samsung/android/aod/AODToast$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHorizontalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmText(Lcom/samsung/android/aod/AODToast$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerticalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmX(Lcom/samsung/android/aod/AODToast$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmY(Lcom/samsung/android/aod/AODToast$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/aod/AODToast;
    .registers 3

    .line 182
    new-instance v0, Lcom/samsung/android/aod/AODToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/aod/AODToast;-><init>(Lcom/samsung/android/aod/AODToast$Builder;Lcom/samsung/android/aod/AODToast-IA;)V

    return-object v0
.end method

.method public setDuration(I)Lcom/samsung/android/aod/AODToast$Builder;
    .registers 2
    .param p1, "duration"    # I

    .line 160
    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    .line 161
    return-object p0
.end method

.method public setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;
    .registers 3
    .param p1, "duration"    # J

    .line 165
    iput-wide p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    .line 166
    return-object p0
.end method

.method public setGravity(III)Lcom/samsung/android/aod/AODToast$Builder;
    .registers 4
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .line 170
    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    .line 171
    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    .line 172
    iput p3, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    .line 173
    return-object p0
.end method

.method public setMargin(FF)V
    .registers 3
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .line 177
    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    .line 178
    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    .line 179
    return-void
.end method
