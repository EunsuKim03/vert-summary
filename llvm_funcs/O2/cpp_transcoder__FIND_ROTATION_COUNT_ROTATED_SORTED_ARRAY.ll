; ModuleID = 'benchmark/cpp_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, i32* %0, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %38, label %8, !llvm.loop !9

8:                                                ; preds = %5
  %9 = add nsw i64 %6, -1
  %10 = add nsw i64 %6, -2
  %11 = and i64 %9, 3
  %12 = icmp ult i64 %10, 3
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = and i64 %9, -4
  br label %40

15:                                               ; preds = %40, %8
  %16 = phi i64 [ 1, %8 ], [ %74, %40 ]
  %17 = phi i32 [ undef, %8 ], [ %73, %40 ]
  %18 = phi i1 [ false, %8 ], [ %71, %40 ]
  %19 = phi i32 [ %3, %8 ], [ %68, %40 ]
  %20 = phi i32 [ %3, %8 ], [ %70, %40 ]
  %21 = icmp eq i64 %11, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %35, %22 ], [ %16, %15 ]
  %24 = phi i32 [ %34, %22 ], [ %17, %15 ]
  %25 = phi i1 [ %32, %22 ], [ %18, %15 ]
  %26 = phi i32 [ %29, %22 ], [ %19, %15 ]
  %27 = phi i32 [ %31, %22 ], [ %20, %15 ]
  %28 = phi i64 [ %36, %22 ], [ 0, %15 ]
  %29 = select i1 %25, i32 %27, i32 %26
  %30 = getelementptr inbounds i32, i32* %0, i64 %23
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp sgt i32 %29, %31
  %33 = trunc i64 %23 to i32
  %34 = select i1 %32, i32 %33, i32 %24
  %35 = add nuw nsw i64 %23, 1
  %36 = add i64 %28, 1
  %37 = icmp eq i64 %36, %11
  br i1 %37, label %38, label %22, !llvm.loop !11

38:                                               ; preds = %15, %22, %5, %2
  %39 = phi i32 [ undef, %2 ], [ undef, %5 ], [ %17, %15 ], [ %34, %22 ]
  ret i32 %39

40:                                               ; preds = %40, %13
  %41 = phi i64 [ 1, %13 ], [ %74, %40 ]
  %42 = phi i32 [ undef, %13 ], [ %73, %40 ]
  %43 = phi i1 [ false, %13 ], [ %71, %40 ]
  %44 = phi i32 [ %3, %13 ], [ %68, %40 ]
  %45 = phi i32 [ %3, %13 ], [ %70, %40 ]
  %46 = phi i64 [ 0, %13 ], [ %75, %40 ]
  %47 = select i1 %43, i32 %45, i32 %44
  %48 = getelementptr inbounds i32, i32* %0, i64 %41
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = icmp sgt i32 %47, %49
  %51 = trunc i64 %41 to i32
  %52 = select i1 %50, i32 %51, i32 %42
  %53 = add nuw nsw i64 %41, 1
  %54 = select i1 %50, i32 %49, i32 %47
  %55 = getelementptr inbounds i32, i32* %0, i64 %53
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = icmp sgt i32 %54, %56
  %58 = trunc i64 %53 to i32
  %59 = select i1 %57, i32 %58, i32 %52
  %60 = add nuw nsw i64 %41, 2
  %61 = select i1 %57, i32 %56, i32 %54
  %62 = getelementptr inbounds i32, i32* %0, i64 %60
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = icmp sgt i32 %61, %63
  %65 = trunc i64 %60 to i32
  %66 = select i1 %64, i32 %65, i32 %59
  %67 = add nuw nsw i64 %41, 3
  %68 = select i1 %64, i32 %63, i32 %61
  %69 = getelementptr inbounds i32, i32* %0, i64 %67
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = icmp sgt i32 %68, %70
  %72 = trunc i64 %67 to i32
  %73 = select i1 %71, i32 %72, i32 %66
  %74 = add nuw nsw i64 %41, 4
  %75 = add i64 %46, 4
  %76 = icmp eq i64 %75, %14
  br i1 %76, label %15, label %40, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
