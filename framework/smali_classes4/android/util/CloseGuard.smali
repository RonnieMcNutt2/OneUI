.class public final Landroid/util/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# instance fields
.field private final mImpl:Ldalvik/system/CloseGuard;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    .line 120
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 136
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 3
    .param p1, "closeMethodName"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public warnIfOpen()V
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/util/CloseGuard;->mImpl:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 144
    return-void
.end method
