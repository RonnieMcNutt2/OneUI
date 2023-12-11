.class public final synthetic Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/VoiceInteractionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/VoiceInteractionService;

    check-cast p1, Landroid/service/voice/AbstractDetector;

    invoke-static {v0, p1}, Landroid/service/voice/VoiceInteractionService;->$r8$lambda$DMmQu49JU0VYMYTGExgCNvdgVUw(Landroid/service/voice/VoiceInteractionService;Landroid/service/voice/HotwordDetector;)V

    return-void
.end method
