.class public Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;
.super Landroid/telecom/Logging/TimedEvent;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager$EventRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventTiming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/telecom/Logging/TimedEvent<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$1:Landroid/telecom/Logging/EventManager$EventRecord;

.field public time:J


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V
    .registers 5
    .param p1, "this$1"    # Landroid/telecom/Logging/EventManager$EventRecord;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 154
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->this$1:Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {p0}, Landroid/telecom/Logging/TimedEvent;-><init>()V

    .line 155
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->name:Ljava/lang/String;

    .line 156
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->time:J

    .line 157
    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 164
    iget-wide v0, p0, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->time:J

    return-wide v0
.end method
