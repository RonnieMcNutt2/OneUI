.class public final synthetic Landroid/service/games/GameService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/service/games/GameService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/games/GameService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/GameService$$ExternalSyntheticLambda0;->f$0:Landroid/service/games/GameService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Landroid/service/games/GameService$$ExternalSyntheticLambda0;->f$0:Landroid/service/games/GameService;

    invoke-static {v0}, Landroid/service/games/GameService;->$r8$lambda$82qLxcg2dcdy8aDybebK2NKRZw0(Landroid/service/games/GameService;)V

    return-void
.end method
