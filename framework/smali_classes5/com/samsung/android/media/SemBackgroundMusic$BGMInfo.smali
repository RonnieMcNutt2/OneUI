.class public Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
.super Ljava/lang/Object;
.source "SemBackgroundMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemBackgroundMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BGMInfo"
.end annotation


# instance fields
.field durationMs:I

.field endTimeMs:I

.field fd:Ljava/io/FileDescriptor;

.field length:J

.field offset:J

.field startTimeMs:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
