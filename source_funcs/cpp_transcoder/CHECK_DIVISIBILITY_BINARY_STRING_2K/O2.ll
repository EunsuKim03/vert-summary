; ModuleID = 'llvm/cpp_transcoder/CHECK_DIVISIBILITY_BINARY_STRING_2K/CHECK_DIVISIBILITY_BINARY_STRING_2K_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CHECK_DIVISIBILITY_BINARY_STRING_2K/CHECK_DIVISIBILITY_BINARY_STRING_2K_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_DIVISIBILITY_BINARY_STRING_2K_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #7
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %72

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %49, label %8

8:                                                ; preds = %5
  %9 = add nsw i64 %6, -1
  %10 = trunc i64 %3 to i32
  %11 = add i32 %10, -1
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %11, %12
  %14 = icmp sgt i32 %13, %11
  %15 = icmp ugt i64 %9, 4294967295
  %16 = or i1 %14, %15
  br i1 %16, label %49, label %17

17:                                               ; preds = %8
  %18 = and i64 %6, 4294967288
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %43, %19 ]
  %21 = phi <4 x i32> [ zeroinitializer, %17 ], [ %41, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %17 ], [ %42, %19 ]
  %23 = xor i64 %20, -1
  %24 = add i64 %3, %23
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds i8, i8* %0, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -3
  %29 = bitcast i8* %28 to <4 x i8>*
  %30 = load <4 x i8>, <4 x i8>* %29, align 1, !tbaa !5
  %31 = shufflevector <4 x i8> %30, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %32 = getelementptr inbounds i8, i8* %27, i64 -4
  %33 = getelementptr inbounds i8, i8* %32, i64 -3
  %34 = bitcast i8* %33 to <4 x i8>*
  %35 = load <4 x i8>, <4 x i8>* %34, align 1, !tbaa !5
  %36 = shufflevector <4 x i8> %35, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %37 = icmp eq <4 x i8> %31, <i8 48, i8 48, i8 48, i8 48>
  %38 = icmp eq <4 x i8> %36, <i8 48, i8 48, i8 48, i8 48>
  %39 = zext <4 x i1> %37 to <4 x i32>
  %40 = zext <4 x i1> %38 to <4 x i32>
  %41 = add <4 x i32> %21, %39
  %42 = add <4 x i32> %22, %40
  %43 = add nuw i64 %20, 8
  %44 = icmp eq i64 %43, %18
  br i1 %44, label %45, label %19, !llvm.loop !8

45:                                               ; preds = %19
  %46 = add <4 x i32> %42, %41
  %47 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %46)
  %48 = icmp eq i64 %18, %6
  br i1 %48, label %72, label %49

49:                                               ; preds = %8, %5, %45
  %50 = phi i64 [ 0, %8 ], [ 0, %5 ], [ %18, %45 ]
  %51 = phi i32 [ 0, %8 ], [ 0, %5 ], [ %47, %45 ]
  %52 = xor i64 %50, -1
  %53 = and i64 %6, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = xor i64 %50, -1
  %57 = add i64 %3, %56
  %58 = shl i64 %57, 32
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !5
  %62 = icmp eq i8 %61, 48
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %51, %63
  %65 = or i64 %50, 1
  br label %66

66:                                               ; preds = %55, %49
  %67 = phi i32 [ undef, %49 ], [ %64, %55 ]
  %68 = phi i64 [ %50, %49 ], [ %65, %55 ]
  %69 = phi i32 [ %51, %49 ], [ %64, %55 ]
  %70 = sub nsw i64 0, %6
  %71 = icmp eq i64 %52, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66, %76, %45, %2
  %73 = phi i32 [ 0, %2 ], [ %47, %45 ], [ %67, %66 ], [ %96, %76 ]
  %74 = icmp eq i32 %73, %1
  %75 = zext i1 %74 to i32
  ret i32 %75

76:                                               ; preds = %66, %76
  %77 = phi i64 [ %97, %76 ], [ %68, %66 ]
  %78 = phi i32 [ %96, %76 ], [ %69, %66 ]
  %79 = xor i64 %77, -1
  %80 = add i64 %3, %79
  %81 = shl i64 %80, 32
  %82 = ashr exact i64 %81, 32
  %83 = getelementptr inbounds i8, i8* %0, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 48
  %86 = zext i1 %85 to i32
  %87 = add nuw nsw i32 %78, %86
  %88 = sub i64 4294967294, %77
  %89 = add i64 %3, %88
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds i8, i8* %0, i64 %91
  %93 = load i8, i8* %92, align 1, !tbaa !5
  %94 = icmp eq i8 %93, 48
  %95 = zext i1 %94 to i32
  %96 = add nuw nsw i32 %87, %95
  %97 = add nuw nsw i64 %77, 2
  %98 = icmp eq i64 %97, %6
  br i1 %98, label %72, label %76, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_DIVISIBILITY_BINARY_STRING_2K_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !9, !10}
