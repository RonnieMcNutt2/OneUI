.class Landroid/os/StrictMode$AndroidCloseGuardReporter;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/CloseGuard$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCloseGuardReporter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/StrictMode$AndroidCloseGuardReporter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 1999
    new-instance v0, Landroid/os/strictmode/LeakedClosableViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/LeakedClosableViolation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 2000
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "allocationSite"    # Ljava/lang/Throwable;

    .line 1994
    new-instance v0, Landroid/os/strictmode/LeakedClosableViolation;

    invoke-direct {v0, p1, p2}, Landroid/os/strictmode/LeakedClosableViolation;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Landroid/os/strictmode/Violation;)V

    .line 1995
    return-void
.end method
