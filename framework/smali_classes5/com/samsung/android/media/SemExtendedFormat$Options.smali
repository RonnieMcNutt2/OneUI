.class public final Lcom/samsung/android/media/SemExtendedFormat$Options;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemExtendedFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final OVERWRITE_IF_EXISTS:I = 0x1

.field public static final OVERWRITE_IF_EXISTS_MP4:I = 0x1000

.field public static final SKIP_IF_EXISTS:I = 0x0

.field public static final SKIP_IF_EXISTS_MP4:I = 0x100

.field public static final SUBSTITUTE_IF_EXIST:I = 0x10

.field public static final TYPE_MP4:I = 0x4

.field public static final TYPE_OVERWRITE_IF_EXISTS:I = 0x1

.field public static final TYPE_SKIP_IF_EXISTS:I = 0x0

.field public static final TYPE_WITH_BOX_TAG:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
