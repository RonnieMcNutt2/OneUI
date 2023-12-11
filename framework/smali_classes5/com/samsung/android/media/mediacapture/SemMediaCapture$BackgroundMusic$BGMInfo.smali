.class public Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BGMInfo"
.end annotation


# instance fields
.field durationMs:I

.field endTimeMs:I

.field fd:Ljava/io/FileDescriptor;

.field length:J

.field offset:J

.field startTimeMs:I

.field final synthetic this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;

    .line 1004
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
