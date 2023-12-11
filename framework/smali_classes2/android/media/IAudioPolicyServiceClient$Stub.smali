.class public abstract Landroid/media/IAudioPolicyServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyServiceClient.java"

# interfaces
.implements Landroid/media/IAudioPolicyServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAudioPatchListUpdate:I = 0x3

.field static final TRANSACTION_onAudioPortListUpdate:I = 0x2

.field static final TRANSACTION_onAudioVolumeGroupChanged:I = 0x1

.field static final TRANSACTION_onDynamicPolicyMixStateUpdate:I = 0x4

.field static final TRANSACTION_onRecordingConfigurationUpdate:I = 0x5

.field static final TRANSACTION_onRoutingUpdated:I = 0x6

.field static final TRANSACTION_onVolumeRangeInitRequest:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    sget-object v0, Landroid/media/IAudioPolicyServiceClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    sget-object v0, Landroid/media/IAudioPolicyServiceClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioPolicyServiceClient;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioPolicyServiceClient;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    sget-object v12, Landroid/media/IAudioPolicyServiceClient$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 74
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_13

    const v0, 0xffffff

    if-gt v10, v0, :cond_13

    .line 75
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_13
    packed-switch v10, :pswitch_data_ae

    .line 85
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_b4

    .line 151
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 81
    :pswitch_20
    move-object/from16 v14, p3

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v13

    .line 146
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onVolumeRangeInitRequest()V

    .line 147
    goto/16 :goto_ac

    .line 141
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRoutingUpdated()V

    .line 142
    goto/16 :goto_ac

    .line 120
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 122
    .local v15, "_arg0":I
    sget-object v0, Landroid/media/RecordClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/RecordClientInfo;

    .line 124
    .local v16, "_arg1":Landroid/media/RecordClientInfo;
    sget-object v0, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/media/audio/common/AudioConfigBase;

    .line 126
    .local v17, "_arg2":Landroid/media/audio/common/AudioConfigBase;
    sget-object v0, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/media/EffectDescriptor;

    .line 128
    .local v18, "_arg3":[Landroid/media/EffectDescriptor;
    sget-object v0, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/media/audio/common/AudioConfigBase;

    .line 130
    .local v19, "_arg4":Landroid/media/audio/common/AudioConfigBase;
    sget-object v0, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, [Landroid/media/EffectDescriptor;

    .line 132
    .local v20, "_arg5":[Landroid/media/EffectDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 134
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 135
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRecordingConfigurationUpdate(ILandroid/media/RecordClientInfo;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;II)V

    .line 137
    goto :goto_ac

    .line 110
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Landroid/media/RecordClientInfo;
    .end local v17    # "_arg2":Landroid/media/audio/common/AudioConfigBase;
    .end local v18    # "_arg3":[Landroid/media/EffectDescriptor;
    .end local v19    # "_arg4":Landroid/media/audio/common/AudioConfigBase;
    .end local v20    # "_arg5":[Landroid/media/EffectDescriptor;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyServiceClient$Stub;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 115
    goto :goto_ac

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_95
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPatchListUpdate()V

    .line 105
    goto :goto_ac

    .line 99
    :pswitch_99
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPortListUpdate()V

    .line 100
    goto :goto_ac

    .line 90
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {v9, v0, v1}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioVolumeGroupChanged(II)V

    .line 95
    nop

    .line 154
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_ac
    return v13

    nop

    :pswitch_data_ae
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_86
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method
