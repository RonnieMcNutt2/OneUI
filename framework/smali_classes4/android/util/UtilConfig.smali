.class public Landroid/util/UtilConfig;
.super Ljava/lang/Object;
.source "UtilConfig.java"


# static fields
.field static sThrowExceptionForUpperArrayOutOfBounds:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setThrowExceptionForUpperArrayOutOfBounds(Z)V
    .registers 1
    .param p0, "check"    # Z

    .line 28
    sput-boolean p0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    .line 29
    return-void
.end method
