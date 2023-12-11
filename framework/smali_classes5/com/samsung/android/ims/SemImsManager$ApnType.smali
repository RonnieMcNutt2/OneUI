.class public Lcom/samsung/android/ims/SemImsManager$ApnType;
.super Ljava/lang/Object;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApnType"
.end annotation


# static fields
.field public static final CBS:Ljava/lang/String; = "cbs"

.field public static final EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final IMS:Ljava/lang/String; = "ims"

.field public static final INTERNET:Ljava/lang/String; = "default"

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final XCAP:Ljava/lang/String; = "xcap"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
