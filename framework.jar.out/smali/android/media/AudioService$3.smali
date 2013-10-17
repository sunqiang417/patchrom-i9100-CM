.class Landroid/media/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2237
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 18
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2241
    packed-switch p1, :pswitch_data_0

    .line 2311
    .end local p2
    :cond_0
    :goto_0
    return-void

    .restart local p2
    :pswitch_0
    move-object/from16 v15, p2

    .line 2243
    check-cast v15, Landroid/bluetooth/BluetoothA2dp;

    .line 2244
    .local v15, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v16

    .line 2245
    .local v16, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2246
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2247
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->noDelayInATwoDP:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2248
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 2249
    :try_start_0
    invoke-virtual {v15, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 2250
    .local v4, state:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/16 v3, 0x80

    const/4 v1, 0x2

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    #calls: Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I
    invoke-static {v2, v3, v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;II)I

    move-result v7

    .line 2253
    .local v7, delay:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x16

    const/4 v5, 0x0

    #calls: Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2259
    monitor-exit v8

    goto :goto_0

    .end local v4           #state:I
    .end local v7           #delay:I
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2250
    .restart local v4       #state:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2261
    .end local v4           #state:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v15, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    #calls: Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, v6, v2}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 2267
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v15           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v16           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2269
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    move-object/from16 v0, p2

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v0}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2271
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v16

    .line 2272
    .restart local v16       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2273
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2278
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 2283
    :cond_3
    const/16 v17, 0x0

    .line 2284
    .local v17, status:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2285
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 2300
    :cond_4
    :goto_3
    :pswitch_2
    if-nez v17, :cond_5

    .line 2301
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v8

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2305
    .end local v17           #status:Z
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    .end local v16           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2275
    .restart local v16       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 2287
    .restart local v17       #status:Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;I)I

    .line 2288
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .line 2290
    goto :goto_3

    .line 2292
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v17

    .line 2294
    goto :goto_3

    .line 2296
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    goto :goto_3

    .line 2241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2285
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 2313
    packed-switch p1, :pswitch_data_0

    .line 2332
    :goto_0
    return-void

    .line 2315
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2316
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2317
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 2320
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2324
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2325
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2326
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
