.class public final synthetic Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;->onTargetsAvailable(Ljava/util/List;)V

    return-void
.end method
