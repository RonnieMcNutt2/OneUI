.class public final Lcom/android/server/am/AppErrorsProto$BadProcess;
.super Ljava/lang/Object;
.source "AppErrorsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BadProcess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorsProto$BadProcess$Entry;
    }
.end annotation


# static fields
.field public static final ENTRIES:J = 0x20b00000002L

.field public static final PROCESS_NAME:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorsProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorsProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorsProto;

    .line 33
    iput-object p1, p0, Lcom/android/server/am/AppErrorsProto$BadProcess;->this$0:Lcom/android/server/am/AppErrorsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
