.class public Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LedSystemEventListener"
.end annotation


# static fields
.field private static final EVENT_TYPE_SYSTEM:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1139
    return-void
.end method
