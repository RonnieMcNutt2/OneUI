.class public Landroid/util/LocalLog$ReadOnlyLocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LocalLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyLocalLog"
.end annotation


# instance fields
.field private final mLog:Landroid/util/LocalLog;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;)V
    .registers 2
    .param p1, "log"    # Landroid/util/LocalLog;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/util/LocalLog$ReadOnlyLocalLog;->mLog:Landroid/util/LocalLog;

    .line 117
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 120
    iget-object v0, p0, Landroid/util/LocalLog$ReadOnlyLocalLog;->mLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 121
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 123
    iget-object v0, p0, Landroid/util/LocalLog$ReadOnlyLocalLog;->mLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 124
    return-void
.end method

.method public reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/util/LocalLog$ReadOnlyLocalLog;->mLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 127
    return-void
.end method

.method public reverseDump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 129
    iget-object v0, p0, Landroid/util/LocalLog$ReadOnlyLocalLog;->mLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->reverseDump(Ljava/io/PrintWriter;)V

    .line 130
    return-void
.end method
