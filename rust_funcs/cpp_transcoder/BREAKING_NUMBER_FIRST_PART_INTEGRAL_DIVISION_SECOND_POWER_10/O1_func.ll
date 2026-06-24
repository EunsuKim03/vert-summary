define noundef i32 @f_gold(ptr dead_on_return noalias noundef align 8 captures(address) dereferenceable(24) %N) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_6.i.i14 = alloca [4 x i8], align 4
  %_6.i.i = alloca [4 x i8], align 4
  %0 = getelementptr inbounds nuw i8, ptr %N, i64 16
  %_0.i = load i64, ptr %0, align 8, !alias.scope !1636, !noundef !43
  %_2.i = icmp sgt i64 %_0.i, -1
  tail call void @llvm.assume(i1 %_2.i)
  %l3 = lshr i64 %_0.i, 1
  %1 = getelementptr inbounds nuw i8, ptr %N, i64 8
  %_0.i.not.i.i107120 = icmp samesign ult i64 %_0.i, 2
  br i1 %_0.i.not.i.i107120, label %bb8, label %bb7.lr.ph.lr.ph

bb7.lr.ph.lr.ph:                                  ; preds = %start
  %2 = and i64 %_0.i, 9223372036854775806
  %.not = icmp eq i64 %2, 2
  %iter.sroa.7.1114126 = zext i1 %.not to i8
  %_0.i3.i.i109121 = icmp samesign ugt i64 %_0.i, 3
  %iter.sroa.0.1113125 = select i1 %_0.i3.i.i109121, i64 2, i64 1
  br label %bb7.lr.ph

bb7.lr.ph:                                        ; preds = %bb7.lr.ph.lr.ph, %bb15
  %_0.sroa.3.0.i.i115130 = phi i64 [ 1, %bb7.lr.ph.lr.ph ], [ %_0.sroa.3.0.i.i115, %bb15 ]
  %iter.sroa.7.1114129 = phi i8 [ %iter.sroa.7.1114126, %bb7.lr.ph.lr.ph ], [ %iter.sroa.7.1114, %bb15 ]
  %iter.sroa.0.1113128 = phi i64 [ %iter.sroa.0.1113125, %bb7.lr.ph.lr.ph ], [ %iter.sroa.0.1113, %bb15 ]
  %count.sroa.0.0.ph127 = phi i32 [ 0, %bb7.lr.ph.lr.ph ], [ %spec.select, %bb15 ]
  br label %bb7

cleanup.loopexit:                                 ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit", %bb13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb3.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E"(ptr noalias noundef align 8 dereferenceable(24) %N) #28
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %bb7.lr.ph, %bb20
  %_0.sroa.3.0.i.i118 = phi i64 [ %_0.sroa.3.0.i.i115130, %bb7.lr.ph ], [ %_0.sroa.3.0.i.i, %bb20 ]
  %iter.sroa.7.1117 = phi i8 [ %iter.sroa.7.1114129, %bb7.lr.ph ], [ %iter.sroa.7.1, %bb20 ]
  %iter.sroa.0.1116 = phi i64 [ %iter.sroa.0.1113128, %bb7.lr.ph ], [ %iter.sroa.0.1, %bb20 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  %_8.i = load ptr, ptr %1, align 8, !alias.scope !1639, !nonnull !43, !noundef !43
  %len.i = load i64, ptr %0, align 8, !alias.scope !1639, !noundef !43
  %_8.i.i.i = icmp eq i64 %_0.sroa.3.0.i.i118, 0
  br i1 %_8.i.i.i, label %bb12.i.i.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb7
  %_9.not.i.i.i = icmp ult i64 %_0.sroa.3.0.i.i118, %len.i
  br i1 %_9.not.i.i.i, label %bb8.i.i.i, label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb5.i.i.i
  %3 = icmp eq i64 %_0.sroa.3.0.i.i118, %len.i
  br label %bb9.i.i.i

bb8.i.i.i:                                        ; preds = %bb5.i.i.i
  %4 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  %self1.i.i.i = load i8, ptr %4, align 1, !alias.scope !1642, !noalias !1639, !noundef !43
  %5 = icmp sgt i8 %self1.i.i.i, -65
  br label %bb9.i.i.i

bb9.i.i.i:                                        ; preds = %bb8.i.i.i, %bb6.i.i.i
  %_3.sroa.0.0.in.i.i.i = phi i1 [ %3, %bb6.i.i.i ], [ %5, %bb8.i.i.i ]
  br i1 %_3.sroa.0.0.in.i.i.i, label %bb12.i.i.i, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"

bb12.i.i.i:                                       ; preds = %bb9.i.i.i, %bb7
  br label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i": ; preds = %bb12.i.i.i, %bb9.i.i.i
  %_0.sroa.0.0.i.i.i = phi ptr [ %_8.i, %bb12.i.i.i ], [ null, %bb9.i.i.i ]
  %.not.i.i = icmp eq ptr %_0.sroa.0.0.i.i.i, null
  br i1 %.not.i.i, label %bb3.i.i.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit", !prof !1039

bb3.i.i.invoke:                                   ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i", %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"
  %6 = phi i64 [ 0, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ %_0.sroa.3.0.i.i118, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %7 = phi i64 [ %_0.sroa.3.0.i.i118, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ %_21, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
  %8 = phi ptr [ @alloc_4589facc9212bd32fc6a75ca289ca8b8, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i" ], [ @alloc_1ffb130ac39c8ca8f51bcb2b0095d451, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i" ]
; invoke core::str::slice_error_fail
  invoke void @_ZN4core3str16slice_error_fail17h4678567854dd8858E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_8.i, i64 noundef %len.i, i64 noundef %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %8) #25
          to label %bb3.i.i.cont unwind label %cleanup.loopexit.split-lp

bb3.i.i.cont:                                     ; preds = %bb3.i.i.invoke
  unreachable

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit": ; preds = %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17hd907b95d9410f36eE.exit.i.i"
  %_21 = shl i64 %_0.sroa.3.0.i.i118, 1
  br i1 %_8.i.i.i, label %bb2.i.i.i, label %bb9.i.i.i6

bb8:                                              ; preds = %bb15, %bb20, %start
  %count.sroa.0.0.ph.lcssa = phi i32 [ 0, %start ], [ %count.sroa.0.0.ph127, %bb20 ], [ %spec.select, %bb15 ]
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ffafe41d4ff3563E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit" unwind label %cleanup.i.i

cleanup.i.i:                                      ; preds = %bb8
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
          to label %common.resume unwind label %terminate.i.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %10 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i.i ], [ %lpad.phi, %cleanup ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h84cb0a6ff2d68fd9E.exit": ; preds = %bb8
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h86eef0594e496705E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %N)
  ret i32 %count.sroa.0.0.ph.lcssa

bb9.i.i.i6:                                       ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit"
  %_12.not.i.i.i = icmp ult i64 %_0.sroa.3.0.i.i118, %len.i
  br i1 %_12.not.i.i.i, label %bb12.i.i.i10, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb9.i.i.i6
  %11 = icmp eq i64 %_0.sroa.3.0.i.i118, %len.i
  br label %bb13.i.i.i

bb12.i.i.i10:                                     ; preds = %bb9.i.i.i6
  %12 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  %self.i.i.i = load i8, ptr %12, align 1, !alias.scope !1647, !noalias !1652, !noundef !43
  %13 = icmp sgt i8 %self.i.i.i, -65
  br label %bb13.i.i.i

bb13.i.i.i:                                       ; preds = %bb12.i.i.i10, %bb10.i.i.i
  %_6.sroa.0.0.in.i.i.i = phi i1 [ %11, %bb10.i.i.i ], [ %13, %bb12.i.i.i10 ]
  br i1 %_6.sroa.0.0.in.i.i.i, label %bb2.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb2.i.i.i:                                        ; preds = %bb13.i.i.i, %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17he0433e3c615fe12fE.exit"
  %_18.i.i.i = icmp eq i64 %_21, 0
  br i1 %_18.i.i.i, label %bb22.i.i.i, label %bb15.i.i.i

bb15.i.i.i:                                       ; preds = %bb2.i.i.i
  %_19.not.i.i.i = icmp ult i64 %_21, %len.i
  br i1 %_19.not.i.i.i, label %bb18.i.i.i, label %bb16.i.i.i

bb16.i.i.i:                                       ; preds = %bb15.i.i.i
  %14 = icmp eq i64 %_21, %len.i
  br label %bb19.i.i.i

bb18.i.i.i:                                       ; preds = %bb15.i.i.i
  %15 = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_21
  %self2.i.i.i = load i8, ptr %15, align 1, !alias.scope !1647, !noalias !1652, !noundef !43
  %16 = icmp sgt i8 %self2.i.i.i, -65
  br label %bb19.i.i.i

bb19.i.i.i:                                       ; preds = %bb18.i.i.i, %bb16.i.i.i
  %_7.sroa.0.0.in.i.i.i = phi i1 [ %14, %bb16.i.i.i ], [ %16, %bb18.i.i.i ]
  br i1 %_7.sroa.0.0.in.i.i.i, label %bb22.i.i.i, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

bb22.i.i.i:                                       ; preds = %bb19.i.i.i, %bb2.i.i.i
  %data.i.i.i = getelementptr inbounds nuw i8, ptr %_8.i, i64 %_0.sroa.3.0.i.i118
  br label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i": ; preds = %bb22.i.i.i, %bb19.i.i.i, %bb13.i.i.i
  %_0.sroa.0.0.i.i.i7 = phi ptr [ %data.i.i.i, %bb22.i.i.i ], [ null, %bb19.i.i.i ], [ null, %bb13.i.i.i ]
  %.not.i.i8 = icmp eq ptr %_0.sroa.0.0.i.i.i7, null
  br i1 %.not.i.i8, label %bb3.i.i.invoke, label %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit", !prof !1039

"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit": ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h01bc0e1bcd9cd302E.exit.i.i"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i.i), !noalias !1655
  store i32 0, ptr %_6.i.i, align 4, !noalias !1655
  store i8 48, ptr %_6.i.i, align 4, !alias.scope !1660, !noalias !1655
; invoke core::slice::<impl [T]>::starts_with
  %_0.i.i13 = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_0.sroa.0.0.i.i.i, i64 noundef %_0.sroa.3.0.i.i118, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i, i64 noundef 1)
          to label %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit" unwind label %cleanup.loopexit

"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit": ; preds = %"_ZN74_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$I$GT$$GT$5index17h970b419e2fc04732E.exit"
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i.i), !noalias !1655
  br i1 %_0.i.i13, label %bb20, label %bb13

bb13:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_6.i.i14), !noalias !1663
  store i32 0, ptr %_6.i.i14, align 4, !noalias !1663
  store i8 48, ptr %_6.i.i14, align 4, !alias.scope !1668, !noalias !1663
; invoke core::slice::<impl [T]>::starts_with
  %_0.i.i16 = invoke noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h64c1bc5a56da65e1E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_0.sroa.0.0.i.i.i7, i64 noundef %_0.sroa.3.0.i.i118, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %_6.i.i14, i64 noundef 1)
          to label %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17" unwind label %cleanup.loopexit

"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17": ; preds = %bb13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_6.i.i14), !noalias !1663
  br i1 %_0.i.i16, label %bb20, label %bb15

bb20:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17", %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit"
  %_10.i.i = trunc nuw i8 %iter.sroa.7.1117 to i1
  %_0.i.not.i.i = icmp ugt i64 %iter.sroa.0.1116, %l3
  %or.cond = select i1 %_10.i.i, i1 true, i1 %_0.i.not.i.i
  %_0.i3.i.i = icmp ult i64 %iter.sroa.0.1116, %l3
  %not.or.cond = xor i1 %or.cond, true
  %narrow = select i1 %not.or.cond, i1 %_0.i3.i.i, i1 false
  %spec.select20 = zext i1 %narrow to i64
  %iter.sroa.0.1 = add nuw i64 %iter.sroa.0.1116, %spec.select20
  %17 = select i1 %or.cond, i1 true, i1 %_0.i3.i.i
  %iter.sroa.7.1 = select i1 %17, i8 %iter.sroa.7.1117, i8 1
  %_0.sroa.3.0.i.i = select i1 %_10.i.i, i64 undef, i64 %iter.sroa.0.1116
  br i1 %or.cond, label %bb8, label %bb7

bb15:                                             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17ha4c7f5344bc721cdE.exit17"
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i, ptr nonnull readonly align 1 %_0.sroa.0.0.i.i.i7, i64 %_0.sroa.3.0.i.i118), !alias.scope !1671, !noalias !1675
  %18 = icmp eq i32 %bcmp.i.i, 0
  %19 = zext i1 %18 to i32
  %spec.select = add i32 %count.sroa.0.0.ph127, %19
  %_10.i.i106 = trunc nuw i8 %iter.sroa.7.1117 to i1
  %_0.i.not.i.i107 = icmp ugt i64 %iter.sroa.0.1116, %l3
  %or.cond108 = select i1 %_10.i.i106, i1 true, i1 %_0.i.not.i.i107
  %_0.i3.i.i109 = icmp ult i64 %iter.sroa.0.1116, %l3
  %not.or.cond110 = xor i1 %or.cond108, true
  %narrow111 = select i1 %not.or.cond110, i1 %_0.i3.i.i109, i1 false
  %spec.select20112 = zext i1 %narrow111 to i64
  %iter.sroa.0.1113 = add nuw i64 %iter.sroa.0.1116, %spec.select20112
  %20 = select i1 %or.cond108, i1 true, i1 %_0.i3.i.i109
  %iter.sroa.7.1114 = select i1 %20, i8 %iter.sroa.7.1117, i8 1
  %_0.sroa.3.0.i.i115 = select i1 %_10.i.i106, i64 undef, i64 %iter.sroa.0.1116
  br i1 %or.cond108, label %bb8, label %bb7.lr.ph

terminate:                                        ; preds = %cleanup
  %21 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
; call core::panicking::panic_in_cleanup
  call void @_ZN4core9panicking16panic_in_cleanup17h5f6bde45d17ae243E() #24
  unreachable
}
