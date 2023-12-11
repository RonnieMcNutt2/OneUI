.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/radio/ProgramList;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/radio/ProgramList;

    iput-object p2, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/radio/ProgramList;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, v1, p1}, Landroid/hardware/radio/ProgramList;->$r8$lambda$1ON_y0uflCStUAT0PWOm5J35bx8(Landroid/hardware/radio/ProgramList;Ljava/util/List;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
