.class public final Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DynamicViewingConfiguration"
.end annotation


# instance fields
.field private mEndTime:I

.field private mSpeedRate:F

.field private mStartTime:I

.field final synthetic this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;IIF)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .param p2, "startTimeMs"    # I
    .param p3, "endTimeMs"    # I
    .param p4, "speedRate"    # F

    .line 728
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mStartTime:I

    .line 730
    iput p3, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mEndTime:I

    .line 731
    iput p4, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mSpeedRate:F

    .line 732
    return-void
.end method


# virtual methods
.method public getEndTime()I
    .registers 2

    .line 740
    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mEndTime:I

    return v0
.end method

.method public getSpeedRate()F
    .registers 2

    .line 744
    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mSpeedRate:F

    return v0
.end method

.method public getStartTime()I
    .registers 2

    .line 736
    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->mStartTime:I

    return v0
.end method
