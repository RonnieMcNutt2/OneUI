.class public Lcom/samsung/android/powerSolution/powerSolutionManager;
.super Ljava/lang/Object;
.source "powerSolutionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "powerSolutionManager"


# instance fields
.field private service:Lcom/samsung/android/powerSolution/IpowerSolution;


# direct methods
.method public constructor <init>(Lcom/samsung/android/powerSolution/IpowerSolution;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/powerSolution/IpowerSolution;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "powerSolutionManager"

    if-nez p1, :cond_e

    .line 13
    const-string v1, "IStartService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 16
    :cond_e
    const-string/jumbo v1, "powerSolutionManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lcom/samsung/android/powerSolution/powerSolutionManager;->service:Lcom/samsung/android/powerSolution/IpowerSolution;

    .line 18
    return-void
.end method


# virtual methods
.method public getMyService()Lcom/samsung/android/powerSolution/IpowerSolution;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/powerSolution/powerSolutionManager;->service:Lcom/samsung/android/powerSolution/IpowerSolution;

    return-object v0
.end method
